class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_menu, only: [:show, :edit]
  before_action :find_user, only: [:new, :edit]

  def index
    @menus = Menu.all
  end

  def show
    @chef = @menu.user
  end

  def new
    #  The @user is set by the before_action
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

  def edit
    #  @menu and @user are set by the before_action
  end

  def update
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def menu_params
    params.require(:menu).permit(:user_id, :name, :photo, :price, :preparation_time, :min_guests, :max_guests, :starter, :main, :dessert, :category, photos: [])
  end
end
