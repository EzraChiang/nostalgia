class CreateCategoryMemories < ActiveRecord::Migration
  def change
    create_table :category_memories do |t|
      t.integer :category_id
      t.integer :memory_id
    end
  end
end
