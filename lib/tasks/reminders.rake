namespace :reminders do
  desc "Schedule all needed reminders"
  task schedule: :environment do
  	Remind.all.each do |r|
  		# if user needs messaging
  		# send them a message
  		SendTextJob.set(wait_until: r.time).perform_later(r)
  		# end
  	end
  end

end
