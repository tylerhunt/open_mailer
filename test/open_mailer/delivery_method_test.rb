require 'test_helper'

class OpenMailer::DeliveryMethodTest < ActiveSupport::TestCase
  setup do
    @delivery_method = OpenMailer::DeliveryMethod.new({})
  end

  test 'opens the encoded message in a temporary file' do
    message = mail
    opened = nil

    Launchy.stub :open, ->(path) { opened = path } do
      @delivery_method.deliver! message
    end

    assert opened.end_with?('.eml')
    assert_equal message.encoded, File.read(opened)
  end

  test 'raises when the envelope has no recipient' do
    error = assert_raises ArgumentError do
      @delivery_method.deliver! mail(to: nil)
    end

    assert_match(/To address may not be blank/, error.message)
  end

  private

  def mail(to: 'recipient@example.com')
    Mail.new(
      from: 'sender@example.com',
      to: to,
      subject: 'Subject',
      body: 'Body'
    )
  end
end
