class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :model, :capacity, presence: true

  def country_name
    country = ISO3166::Country[location]
    country.translations[I18n.locale.to_s] || country.name
  end
end
