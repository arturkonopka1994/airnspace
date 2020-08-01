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
	end
	
	private
		def spaceship_params
			params.require(:spaceship).permit(:model, :fuel, :capaciy, :cost, :currency, :location, :captain, :year_of_production)
		end

