class User < ActiveRecord::Base

  def token!
    self.token = SecureRandom.hex
    save
  end
end
