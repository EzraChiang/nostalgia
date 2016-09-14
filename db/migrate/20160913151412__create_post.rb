class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :rating_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
