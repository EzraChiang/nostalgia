class Category < ActiveRecord::Base
  has_many :category_decades
  has_many :decades, through: :category_decades
  has_many :category_memories
  has_many :memories, through: :category_memories
end
