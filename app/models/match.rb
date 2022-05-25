class Match < ApplicationRecord
  belongs_to :room
  belongs_to :challenge
end
