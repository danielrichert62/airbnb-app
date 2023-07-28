class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :rooms
  has_many :reservations
  has_many :reviews, through: :reservations
end
