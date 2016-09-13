class Game < ActiveRecord::Base
  has_many :game_player_teams
  has_many :players, through: :game_player_teams, source: :player
  has_many :teams, through: :game_player_teams, source: :team

  belongs_to :home_team, foreign_key: :home_team_id, class_name: "Team"
  belongs_to :away_team, foreign_key: :away_team_id, class_name: "Team"

  has_many :home_team_players, through: :home_team, source: :players
  has_many :away_team_players, through: :away_team, source: :players

  has_many :game_officials
  has_many :officials, through: :game_officials, source: :official
end
