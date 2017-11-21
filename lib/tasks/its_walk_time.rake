namespace :its_walk_time do
  desc "Send Giphy as MMS via Twilio"
  task :send_mms => :environment do
    require 'giphy/get_giphy'
    require 'twilio/send_mms'

    SendMms.call(GetGiphy.call)
  end
end
