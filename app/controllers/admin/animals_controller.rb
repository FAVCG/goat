class Admin::AnimalsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @animals = Animal.where(user_id: current_user.id)
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to admin_animals_path, notice: 'Animal was successfully destroyed.'
  end

end
