class User < ActiveRecord::Base
  
  include BCrypt
  
  validates :email, presence: true, uniqueness: true
  validate :password_present

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(password)
    @password = Password.create(password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    return user if user && user.password == password
  end

  def authenticate(password)
    self.password.is_password? password
  end

  private
  
  def password_present
    errors.add(:password, "you must enter a password") if self.password == ""
  end

end
