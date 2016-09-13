class CreateGamePlayerTeams < ActiveRecord::Migration
  def change
    create_table :game_player_teams do |t|
      t.integer :team_id
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end
