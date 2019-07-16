class AnimalsController < ApplicationController
  def index
    search = params[:animal_type]

    if search
      @animals = Animal.where(animal_type: search)
    else
      @animals = Animal.all
    end
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

  def show
    @animal = Animal.find(params[:id])
    @booking = Booking.new
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :animal_type, :description, :price, :photo)
  end
end
