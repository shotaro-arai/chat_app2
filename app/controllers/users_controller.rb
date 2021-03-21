class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_parameter)
      redirect_to  root_path
    else
      render :edit
    end
  end

  private

  def user_parameter
    params.require(:user).permit(:name, :email)
  end
end
