require 'action_mailer'
require 'rails/railtie'

require_relative 'delivery_method'

module OpenMailer
  class Railtie < ::Rails::Railtie
    initializer 'open_mailer.delivery_method' do
      ActionMailer::Base.add_delivery_method :open_mailer, DeliveryMethod
    end
  end
end
