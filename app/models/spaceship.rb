class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings, :reviews
end
