class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string :name
      t.string :picture
      t.string :video
      t.string :text
    end
  end
end
