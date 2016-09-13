class CreateGameOfficials < ActiveRecord::Migration
  def change
    create_table :game_officials do |t|
      t.integer :official_id
      t.integer :game_id

      t.timestamps
    end
  end
end
