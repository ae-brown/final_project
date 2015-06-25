class SendTextJob < ActiveJob::Base
  queue_as :default

  def perform(remind)

  	@@REMINDER_TIME = 2.minutes # minutes before appointment

  # Notify our appointment attendee X minutes before the appointment time
  
    @twilio_number = '+16463628735'
    @client = Twilio::REST::Client.new 'ACb16288542ca0ba17eabbfc66c5f76a97', '2ac63f26e312baff2173c0191d7e9451'
    time_str = remind.time.strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi, Just a reminder to take your #{remind.medication}."
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => remind.cel_phone,
      :body => reminder
    )
    puts message.to
	end	

  def when_to_run
    time - @@REMINDER_TIME
  end

  #handle_asynchronously :perform`, :run_at => Proc.new { |i| i.when_to_run }




  
end
