require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :entries

  validates :email, :username, :password, { presence: true}
  validates :password, length: { minimum: 6 }
  validates :email, :username, {uniqueness: true}


  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(password)
    @password = BCrypt::Password.create(password)
    self.hashed_password = @password
  end

  def self.authenticate(username, password)
    @user = User.find_by(username: username)
    return @user if @user && @user.password == password
    nil
  end

end
