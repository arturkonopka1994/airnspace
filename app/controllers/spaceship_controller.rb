class SpapceshipsController < ApplicationController
	before_action :authenticate_user!

    def index
      @spaceships = Spaceship.all
    end

    def new
      @spaceship = Spaceship.new
    end

    def create
			@spaceship = Spaceship.new
			if @spaceship.save
				redirect_to spaceship_path(@spaceship)
			else
				render 'new'
		end
	end

		def show
			@spaceship = Spaceship.show
		end

		def update
			if @spaceship.update(spaceship.params)
				redirect_to spaceship_path
			else
				render 'edit'
			end
		end

