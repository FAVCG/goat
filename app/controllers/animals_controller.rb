class AnimalsController < ApplicationController
  def index
    search = params[:animal_type]
    user_id = params[:user_id]

    if user_id
      user = User.find(user_id)
      if search
        @animals = user.owned_animals.where(animal_type: search)
      else
        @animals = user.owned_animals
      end
    else
      if search
        @animals = Animal.where(animal_type: search)
      else
        @animals = Animal.all
      end
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
    params.require(:animal).permit(:name, :animal_type, :description, :price, :photo, :location)
  end
end
