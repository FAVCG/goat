class Admin::AnimalsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @animals = Animal.where(user_id: current_user.id)
  end
end
