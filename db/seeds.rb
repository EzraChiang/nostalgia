20.times do
  user = User.create!( username: Faker::Internet.user_name,
               email: Faker::Internet.free_email,
               password: "password")
end

40.times do
  post = Post.create!( title: Faker::Space.nasa_space_craft,
    body: Faker::Hipster.paragraph,
    user_id: rand(1..20),
    rating_id: rand(1..5)
    )
end

20.times do
  comment = Comment.create!( comment: Faker::Hacker.say_something_smart,
               user_id: rand(1..20),
               post_id: rand(1..40))
end
