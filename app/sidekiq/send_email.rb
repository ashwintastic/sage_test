class SendEmail < JobScheduler
  include MessageBroker::Email
  QUEUQ = 'EMAIL'

  def type
    Channel.find_by(name: 'email')
  end

  def channels(id)
    user_channels(id).find { |t| t.name ==  type}
  end

  def users_emails
   User.joins(:user_preference).where("channel_name = email")

  end

  def bulk_send
    users_emails.batch_process.send_message('dummy_message')
  end

  def send!
    channel.send_message('dummy message', email_id)
  end

  def process(*ids)
    channels(ids)
    send!
  end
end