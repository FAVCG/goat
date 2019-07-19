  class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  before_action :store_user_location!, if: :storable_location?

  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  def index
    search = params[:animal_type]
    user_id = params[:user_id]

    if user_id
      user = User.find(user_id)
      if search
        # @animals = user.owned_animals.where(animal_type: search)
        @animals = policy_scope(Animal).where(user: user, animal_type: search)
      else
        # @animals = user.owned_animals
        @animals = policy_scope(Animal).where(user: user)
      end
    else
      if search
        @animals = policy_scope(Animal).where(animal_type: search)
      else
        @animals = policy_scope(Animal)
      end
    end
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def create
    @animal = Animal.new(animal_params)
        authorize @animal

    @animal.user = current_user
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def show
    @other_animals = policy_scope(Animal)
    @booking = Booking.new
    @others_animals_bookings = current_user.bookings
  end

  def destroy
    @animal.destroy
    redirect_to admin_animals_path, notice: 'Animal was successfully destroyed.'
  end

  def edit

  end
  def update

    if @animal.update(animal_params)
      redirect_to @animal, notice: 'Your animal was successfully updated.'
    else
      render :edit
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :animal_type, :description, :price, :photo, :location, :address)
  end

  def set_animal
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
end
