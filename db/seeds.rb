20.times do
  user = User.create!(first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               user_name: Faker::Internet.user_name,
               email: Faker::Internet.email,
               password: '123')
end
