require 'active_support/lazy_load_hooks'

require 'open_mailer/delivery_method'
require 'open_mailer/version'

module OpenMailer
end

ActiveSupport.on_load :action_mailer do
  add_delivery_method :open_mailer, OpenMailer::DeliveryMethod
end
