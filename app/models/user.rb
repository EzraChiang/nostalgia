class User < ActiveRecord::Base
  include BCrypt

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(password)
    @password = Password.create(password)
    self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end

end
