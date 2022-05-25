class Challenge < ApplicationRecord
  belongs_to :challenger, class_name: Room.name, primary_key: :challenger_id
  belongs_to :challenged, class_name: Room.name, primary_key: :challenged_id
end
