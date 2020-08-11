class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home
  
  def home
    @spaceships = Spaceship.first(3)
  end
  
  def dashboard
  end
end
