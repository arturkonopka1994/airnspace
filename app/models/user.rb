class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :spaceships, dependent: :destroy
  has_many :booked_spaceships, through: :bookings, source: :spaceship

  def email_or_first_name
    if first_name.present?
      return first_name
    else
      return email
    end
  end

end
