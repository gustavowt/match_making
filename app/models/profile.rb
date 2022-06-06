class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, presence: true

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb_xs, resize_to_limit: [25, 25]
    attachable.variant :thumb_s, resize_to_limit: [50, 50]
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
