class CreateCategoryDecades < ActiveRecord::Migration
  def change
    create_table :category_decades do |t|
      t.integer :category_id, {null:false}
      t.integer :decade_id, {null:false}
    end

  end
end
