class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end
  def show
    @animal = Animal.find(params[:id])
  end
  def create
    @animal = Animal.new(animal_params)
    raise
    @animal.user = current_user
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :type, :description, :price)
  end
end
