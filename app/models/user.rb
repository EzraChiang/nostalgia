class User < ActiveRecord::Base

  validates :hashed_password, :email, :full_name, { presence: true }
  validates :email, uniqueness: true

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




# class User < ActiveRecord::Base
#   # Remember to create a migration!
#   validates :hashed_password, :email, { presence: true }
#   validates :email, uniqueness: true

#   # def password
#   #   @password ||= BCrypt::Password.new(hashed_password)
#   # end

#   # def password=(new_password)
#   #   @password = BCrypt::Password.create(new_password)
#   #   self.hashed_password = @password
#   # end

#   # def authenticate(password)
#   #   self.password == password
#   # end

# end
