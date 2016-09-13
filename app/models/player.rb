class Player < ActiveRecord::Base
  has_many :game_player_teams
  has_many :teams,  through: :game_player_teams, source: :team
  has_many :games, through: :game_player_teams, source: :game

  has_many :teammates, through: :teams, source: :players

  has_many :game_officials, foreign_key: :official_id
  has_many :officiated_for, through: :game_officials, source: :game
  has_many :officiated_by, through: :games, source: :officials
end
