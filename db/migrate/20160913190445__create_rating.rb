class CreateRating < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating, null: false
      t.integer :post_id, null: false
      t.integer :user_id, null: false

      t.timestamps(null: false)
    end
  end
end
