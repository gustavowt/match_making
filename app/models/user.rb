class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :rooms

  validates :email, presence: true

  accepts_nested_attributes_for :profile

  def current_room
    rooms.ready.take
  end
end
