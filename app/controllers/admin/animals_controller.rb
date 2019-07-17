class Admin::AnimalsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @animals = current_user.owned_animals
    @my_animals_bookings = current_user.others_bookings
    @others_animals_bookings = current_user.bookings
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to admin_animals_path, notice: 'Animal was successfully destroyed.'
  end

end
