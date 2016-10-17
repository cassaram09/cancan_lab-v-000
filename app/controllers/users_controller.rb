class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to '/login'
  end

  private
  def user_params
    params.require(:user).permit(:name, :role)
  end
  
end