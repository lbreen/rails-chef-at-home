class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
    @selected_category = params[:category]
    @selected_guests = params[:guests]
    if @selected_guests.empty?
      @selected_menus = @menus.select { |menu| menu.category.downcase == @selected_category.downcase }
    else
      @selected_menus = @menus.select { |menu| menu.category.downcase == @selected_category.downcase && menu.min_guests < @selected_guests.to_i && @selected_guests.to_i < menu.max_guests }
    end
  end

  def show
    @chef = @menu.user
    session[:menu_id] = @menu.id
  end

  def new
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
  end

  def update

    @menu.update(menu_params)
  end

  def destroy
    @menu.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:user_id, :name, :price, :preparation_time, :min_guests, :max_guests, :starter, :main, :dessert, :category, photos: [])
  end
end
