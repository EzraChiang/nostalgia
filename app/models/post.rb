class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :ratings

  validates :title, :body, presence: true
end
