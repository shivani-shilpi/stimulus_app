namespace :batch do
  desc "Send out batch messages"
  task send_messages: :environment do
    puts "#{Time.now}: Welcome to rails world"
  end
end
