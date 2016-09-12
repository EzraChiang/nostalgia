class CategoryMemory < ActiveRecord::Base
  belongs_to :category
  belongs_to :memory
end
