require 'Bcrypt'

class User < ActiveRecord::Base
  validates_presence_of :name
  validates :name, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
      @password = BCrypt::Password.create(new_password)
      self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end

end
