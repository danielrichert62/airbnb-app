class User < ApplicationRecord
  has_many :rooms
  has_many :reservations
  has_many :reviews, through: :reservations
end
