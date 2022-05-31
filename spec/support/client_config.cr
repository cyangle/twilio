TWILIO_ACCOUNT_SID = ENV.fetch("TWILIO_ACCOUNT_SID", "ignored_by_vcr")
TWILIO_AUTH_TOKEN  = ENV.fetch("TWILIO_AUTH_TOKEN", "ignored_by_vcr")

Twilio.configure do |config|
  config.username = TWILIO_ACCOUNT_SID
  config.password = TWILIO_AUTH_TOKEN
end
