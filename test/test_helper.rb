require 'rails'
require 'action_mailer/railtie'
require 'active_support/test_case'

require 'open_mailer'

class TestApplication < Rails::Application
  config.eager_load = false
  config.logger = Logger.new(IO::NULL)
  config.root = __dir__
  config.secret_key_base = 'test'
end

Rails.application.initialize!
