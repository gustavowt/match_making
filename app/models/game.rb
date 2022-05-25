class Game < ApplicationRecord
  has_many :rooms, dependent: :restrict_with_error
end
