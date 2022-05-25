class MapChoice < ApplicationRecord
  belongs_to :map
  belongs_to :match
  belongs_to :user
end
