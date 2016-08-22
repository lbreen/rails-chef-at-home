class UsersController < ApplicationController

  before_action :find_user, only: [:show, :new, :create]

  def index
    if @user.admin == true
      @user = User.all
    end
  end
  def show
  end
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :postal_address, :description, :admin)
  end
end
