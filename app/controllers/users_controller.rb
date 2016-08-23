class UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @users = User.all
  end
  def show
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :postal_address, :description, :admin)
  end
end
