require 'faker'

10.times do
  Player.create(name: Faker::Name.name, jersey_number: rand(100) )
end

Team.create(name: "Crips")
Team.create(name: "Pirus")
Team.create(name: "ViceLords")

5.times do
  Game.create(start_time: nil, max_score: 99, home_team_id: 1, away_team_id: rand(2)+1)
end

5.times do
  GameOfficial.create(official_id: rand(10), game_id: rand(4)+1)
end

30.times do
  GamePlayerTeam.create(team_id: rand(3)+1, player_id: rand(10)+1, game_id: rand(5)+1 )
end
