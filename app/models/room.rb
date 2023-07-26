class Room < ApplicationRecord
  belongs_to :user
  has_many :room_images
  has_many :reservations
end
