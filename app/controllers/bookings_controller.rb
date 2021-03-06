class BookingsController < ApplicationController
	def new
		@spaceship = Spaceship.find(params[:spaceship_id])
		@booking = Booking.new
	end
		
	def create
		@spaceship = Spaceship.find(params[:spaceship_id])
		@booking = Booking.new(booking_params)
		@booking.spaceship = @spaceship
		@booking.user = current_user
		if @booking.save!
			redirect_to dashboard_path
		else
			render 'new'
		end
	end

	def destroy
    @booking = Booking.find(params[:id])
		@booking.destroy
		redirect_to dashboard_path
	end
	
	private

	def booking_params
		params.require(:booking).permit(:start_date, :end_date)
	end
end

