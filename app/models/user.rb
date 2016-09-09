require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates :name, :email, :hashed_password, { presence: true}
  validates :email, { uniqueness: true }
  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end


  def password=(password)
    @password = BCrypt::Password.create(password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    return @user if @user && @user.password == password
  end






end
