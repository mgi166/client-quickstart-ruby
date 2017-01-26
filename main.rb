require 'twilio-ruby'
require 'dotenv'

Dotenv.load

client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])

# NOTE: Fix client name
client.account.calls.create(
  from: ENV['TWILIO_CALLER_ID'],
  to: 'client:leone_blanda',
  url: ENV['TWILIO_CALLBACK_URL']
)

# NOTE: Fix client name
client.account.calls.create(
  from: ENV['TWILIO_CALLER_ID'],
  to: 'client:demetriusferry',
  url: ENV['TWILIO_CALLBACK_URL']
)
