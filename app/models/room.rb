class Room < ApplicationRecord
  belongs_to :game
  belongs_to :owner, class_name: User.name, foreign_key: :user_id

  has_many :players, dependent: :destroy

  after_create_commit { broadcast_append_to 'rooms' }
  after_update_commit { broadcast_replace_to 'rooms' }
  after_destroy_commit { broadcast_remove_to 'rooms' }

  has_enumeration_for :status,
                      with: RoomStatus,
                      create_helpers: true,
                      create_scopes: true
end
