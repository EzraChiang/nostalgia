class Event < ActiveRecord::Base
  belongs_to :user

  validates :url, :description, presence: true
end
