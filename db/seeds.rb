
puts"seeding data"

puts"creating fake  users"
30.times do
  User.create(
    email: Faker::Internet.email,
    username: Faker::Internet.username,
    password: "password"
  )
end

puts "creating projects"

Project.create(
  name: "Project 1",
  description: "This is the first project",
  user_id: 1
)

Project.create(
  name: "Project 2",
  description: "This is the second project",
  user_id: 1
)

Project.create(
  name: "Project 3",
  description: "This is the third project",
  user_id: 1
)

puts "creating reviews"

Review.create(
  name: "Review 1",
  description: "This is the first review",
  project_id: 1
)

Review.create(
  name: "Review 2",
  description: "This is the second review",
  project_id: 1
)

Review.create(
  name: "Review 3",
  description: "This is the third review",
  project_id: 1
)