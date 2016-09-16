class Memory < ActiveRecord::Base
  has_many :category_memories
  has_many :categories, through: :category_memories
end
