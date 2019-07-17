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
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to admin_animals_path, notice: 'Animal was successfully destroyed.'
  end

  def edit
    @animal = Animal.find(params[:id])
  end
  def update
        @animal = Animal.find(params[:id])

    if @animal.update(animal_params)
      redirect_to @animal, notice: 'Your animal was successfully updated.'
    else
      render :edit
    end
  end
  private

  def animal_params
    params.require(:animal).permit(:name, :animal_type, :description, :price, :photo, :location)
  end
end
