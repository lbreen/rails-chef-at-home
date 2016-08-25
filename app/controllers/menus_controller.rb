class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_menu, only: [:show]
  def index
    @menus = Menu.all
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.user = current_user
    if @menu.save
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:user_id, :name, :photo, :price, :preparation_time, :min_guests, :max_guests, :starter, :main, :dessert, :category, photos: [])
  end
end
