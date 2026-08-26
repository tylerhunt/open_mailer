require 'launchy'
require 'mail/smtp_envelope'
require 'tempfile'

module OpenMailer
  class DeliveryMethod
    attr_accessor :settings

    def initialize(settings)
      self.settings = settings
    end

    def deliver!(mail)
      envelope = Mail::SmtpEnvelope.new(mail)
      file = Tempfile.open(['', '.eml']) { |file| file << envelope.message }
      Launchy.open file.path
    end
  end
end
