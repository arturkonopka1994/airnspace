class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spaceship

  validates :start_date, :end_date, presence: true

  def total_price
    
  end
end

