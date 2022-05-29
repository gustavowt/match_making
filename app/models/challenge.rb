class Challenge < ApplicationRecord
  belongs_to :challenger, class_name: Room.name, foreign_key: :challenger_id
  belongs_to :challenged, class_name: Room.name, foreign_key: :challenged_id
end
