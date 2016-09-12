class CategoryDecade < ActiveRecord::Base
  belongs_to :decade
  belongs_to :category
end
