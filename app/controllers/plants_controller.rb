class PlantsController < ApplicationController
  
  def index
    @plants = Plant.all
    @plant = Plant.new
  end

  def new
    @plant = Plant.new
  end

  def create
    Plant.create(plant_params)
    redirect_to root_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name)
  end

end
