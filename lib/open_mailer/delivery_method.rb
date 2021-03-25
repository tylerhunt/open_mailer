require 'launchy'
require 'mail/check_delivery_params'

module OpenMailer
  class DeliveryMethod
    attr_accessor :settings

    def initialize(**settings)
      self.settings = settings
    end

    def deliver!(mail)
      Mail::CheckDeliveryParams.check mail
      file = Tempfile.open(['', '.eml']) { |file| file << mail }
      Launchy.open file.path
    end
  end
end
