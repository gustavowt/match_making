class Room < ApplicationRecord
  belongs_to :game
  belongs_to :owner, class_name: User.name, foreign_key: :user_id
end
