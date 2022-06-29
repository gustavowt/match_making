class Player < ApplicationRecord
  belongs_to :user
  belongs_to :room

  after_create_commit { broadcast_append_to "players_room_#{room_id}", target: "players_room_#{room_id}" }
  after_destroy_commit { broadcast_remove_to "player_#{id}" }
end
