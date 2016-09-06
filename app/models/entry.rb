class Entry < ActiveRecord::Base
  belongs_to :author, class_name: "User", foreign_key: :user_id

  validates :body, :title, {presence: true}
end
