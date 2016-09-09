require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates :name, :email, :hashed_password, { presence: true}

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end


  def password=(password)
    @password = BCrypt::Password.create(password)
    self.hashed_password = @password
  end

  def self.authentication(email, password)
    @user = User.find_by(email: email)
    return @user if @user && @user.passsword == password
  end






end
