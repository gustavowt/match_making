class User < ApplicationRecord
  has_one :profile

  validates :email, presence: true

  accepts_nested_attributes_for :profile
end
