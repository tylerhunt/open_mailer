RSpec.describe OpenMailer do
  it 'registers the delivery method with Action Mailer' do
    expect(ActionMailer::Base.delivery_methods)
      .to include(open_mailer: described_class::DeliveryMethod)
  end
end
