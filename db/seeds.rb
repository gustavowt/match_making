# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

gustavo = User.create(
  email: 'gustavo@test.com',
  password: '12345678',
  password_confirmation: '12345678',
  profile_attributes: {
    first_name: 'Gustavo',
    last_name: 'Teixeira'
  }
)

gustavo.profile.avatar.attach(
  io: File.open("#{Rails.root}/db/fixtures/Gustavo.jpeg"),
  filename: 'Gustavo.jpeg',
  content_type: 'image/jpeg'
)

ozzy = User.create(
  email: 'ozzy@test.com',
  password: '12345678',
  password_confirmation: '12345678',
  profile_attributes: {
    first_name: 'Ozzy',
    last_name: 'Osbourne'
  }
)

ozzy.profile.avatar.attach(
  io: File.open("#{Rails.root}/db/fixtures/Ozzy.jpeg"),
  filename: 'Ozzy.jpeg',
  content_type: 'image/jpeg'
)

bruce = User.create(
  email: 'bruce@test.com',
  password: '12345678',
  password_confirmation: '12345678',
  profile_attributes: {
    first_name: 'Bruce',
    last_name: 'Dickson'
  }
)

bruce.profile.avatar.attach(
  io: File.open("#{Rails.root}/db/fixtures/BruceDickson.jpeg"),
  filename: 'BruceDickson.jpeg',
  content_type: 'image/jpeg'
)

angus_young = User.create(
  email: 'angus@test.com',
  password: '12345678',
  password_confirmation: '12345678',
  profile_attributes: {
    first_name: 'Angus',
    last_name: 'Young'
  }
)

angus_young.profile.avatar.attach(
  io: File.open("#{Rails.root}/db/fixtures/AngusYoung.jpeg"),
  filename: 'AngusYoung.jpep',
  content_type: 'image/jpeg'
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
      user_id: gustavo.id,
      game_id: game.id,
      status: 'open',
      visibility: 'public'
    },
    {
      user_id: ozzy.id,
      game_id: game.id,
      status: 'open',
      visibility: 'restrict'
    }
  ]
)
