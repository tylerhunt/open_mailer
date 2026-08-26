module OpenMailer
  RSpec.describe DeliveryMethod do
    subject(:delivery_method) { described_class.new({}) }

    let(:recipient) { 'recipient@example.com' }

    let(:mail) do
      Mail.new(
        from: 'sender@example.com',
        to: recipient,
        subject: 'Subject',
        body: 'Body',
      )
    end

    describe '#deliver!' do
      it 'opens a temporary .eml file' do
        expect(Launchy)
          .to receive(:open)
          .with(a_string_starting_with(Dir.tmpdir).and ending_with('.eml'))

        delivery_method.deliver! mail
      end

      it 'opens the encoded message' do
        opened = nil
        allow(Launchy).to receive(:open) { |path| opened = path }

        delivery_method.deliver! mail

        expect(File.read(opened)).to eq(mail.encoded)
      end

      context 'when the envelope has no recipient' do
        let(:recipient) { nil }

        it 'raises' do
          expect { delivery_method.deliver!(mail) }
            .to raise_error(ArgumentError, /To address may not be blank/)
        end
      end
    end
  end
end
