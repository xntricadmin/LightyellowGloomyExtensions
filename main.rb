require_relative 'crud'

users = [
  {username: "Joshua", password: "password"},
  {username: "Rosanna", password: "password"},
  {username: "Evie", password: "password"},
  {username: "Thea", password: "password"},
  {username: "James", password: "password"}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users




