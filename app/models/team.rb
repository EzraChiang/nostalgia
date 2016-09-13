class Team < ActiveRecord::Base
  has_many :game_player_teams
  has_many :players, through: :game_player_teams, source: :player
  has_many :games, through: :game_player_teams, source: :game
  has_many :officials, through: :games, source: :officials
end
