require 'test_helper'

class OpenMailerTest < ActiveSupport::TestCase
  test 'registers the delivery method with Action Mailer' do
    assert_equal OpenMailer::DeliveryMethod,
      ActionMailer::Base.delivery_methods[:open_mailer]
  end
end
