class GameOfficial < ActiveRecord::Base
  belongs_to :official, foreign_key: :official_id, class_name: "Player"
  belongs_to :game
end
