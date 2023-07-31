class SendToWhatApp < JobScheduler

  def type
    Channel.find_by(name: 'whatsapp')
  end


  def channel
    user_channels.find { |t| t.name ==  type}
  end


  def send!
    channel.send_message('dummy message')
  end
end