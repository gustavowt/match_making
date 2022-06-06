class Player < ApplicationRecord
  belongs_to :user
  belongs_to :room

  after_create_commit { broadcast_append_to "room_#{room_id}_players" }
  after_destroy_commit { broadcast_remove_to "room_#{room_id}_players" }
end
