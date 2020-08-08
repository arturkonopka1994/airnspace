class SpaceshipsController < ApplicationController
	before_action :set_spaceship, only: [:show, :update, :destroy, :edit] 
	before_action :authenticate_user!, except: [:home, :index, :show]

	def index
		@spaceships = Spaceship.all
	end

	def show	
	end

	def new
		@spaceship = Spaceship.new
	end

	def create
		@spaceship = Spaceship.new(spaceship_params)
		@spaceship.user = current_user
		if @spaceship.save!
			redirect_to spaceship_path(@spaceship)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @spaceship.update(spaceship_params)
			redirect_to spaceship_path(@spaceship)
		else
			render 'edit'
		end
	end

	def destroy
		@spaceship.destroy
		redirect_to spaceships_path
	end

	private

	def set_spaceship
		@spaceship = Spaceship.find(params[:id])
	end

	def spaceship_params
		params.require(:spaceship).permit(:model, :fuel_type, :capacity, 
		:currency, :location, :captain_name, :date_of_production, :cost, :photo)
	end
end
