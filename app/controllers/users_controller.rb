class UsersController  < ActiveController
  def destroy
    user_session.destroy
    redirect_to animals_path
  end

end
