class User < ActiveRecord::Base
  validates :user_name, :email, { presence: true }
  validates :email, :user_name, { uniqueness: true }

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end
end
