class BookingsController < ApplicationController
  def new
		@booking = Booking.new
	end
		
	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			redirect_to spaceship_path(@spaceship)
		else
			render 'new'
		end
	end

	def destroy
    @booking = Booking.find(params[:id])
		@booking.destroy
		redirect_to bookings_path
	end
	
	private
	def spaceship_params
		params.require(:spaceship).permit(:model, :fuel_type, :capacity, :cost, :currency, :location, :captain_name, :date_of_production)
	end

