# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :rooms, dependent: :restrict_with_error

  validates :team_size, :name, presence: true
end
