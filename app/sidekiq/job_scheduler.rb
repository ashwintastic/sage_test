class JobScheduler
  def user_channels(id)
    user = User.find_by(id: id)
    user.channels
  end


end