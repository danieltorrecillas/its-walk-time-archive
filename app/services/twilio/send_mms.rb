require 'twilio-ruby'

class SendMms
  def self.call(giphy_url)
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    Subscriber.all.each do |subscriber|
      client.messages.create(
        from: ENV['TWILIO_PHONE_NUMBER'],
        to: subscriber.phone_number,
        body: "It's walk time!",
        media_url: giphy_url)
    end
  end
end
