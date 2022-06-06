# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(
  email: 'test@test.com',
  password: '12345678',
  password_confirmation: '12345678',
  profile_attributes: {
    first_name: 'Gustavo',
    last_name: 'Teixeira'
  }
)
game = Game.create(
  name: 'Counter Strike',
  description: 'FPS game',
  game_type: 'fps',
  team_size: 5
)

rooms = Room.create(
  [
    {
      user_id: user.id,
      game_id: game.id,
      status: 'open',
      visibility: 'public'
    },
    {
      user_id: user.id,
      game_id: game.id,
      status: 'open',
      visibility: 'restrict'
    }
  ]
)
