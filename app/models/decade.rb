class Decade < ActiveRecord::Base
  has_many :category_decades
  has_many :categories, through: :category_decades
end
