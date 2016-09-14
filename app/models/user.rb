class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :ratings

  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true

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
