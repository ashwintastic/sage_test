class SendToSlack < JobScheduler
  include MessageBroker::Slack

  QUEUQ = 'SLACK'

  def type
    Channel.find_by(name: 'slack')
  end

  def channels(id)
    user_channels(id).find { |t| t.name ==  type}
  end

  def slack_channels
    User.joins(:user_preference).where("channel_name = slack")

  end

  def slack_channels
    slack_channels.batch_process.send_message('dummy_message')
  end



  def send!
    channels.send_message('dummy message')
  end

  def process(*ids)
    channels(ids)
    send!
  end
end


