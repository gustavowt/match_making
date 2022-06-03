class Room < ApplicationRecord
  belongs_to :game
  belongs_to :owner, class_name: User.name, foreign_key: :user_id

  after_commit :notify_stream_append, on: %i[create update]
  after_destroy_commit { broadcast_remove_to 'rooms' }

  private

  def notify_stream_append
    broadcast_append_to 'rooms'
  end
end
