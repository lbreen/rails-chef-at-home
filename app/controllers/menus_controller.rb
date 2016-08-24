class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_menu, only: [:show]
  def index
    @menus = Menu.all
  end

  def show
  end

  def new
    @usr = User.find(params[:user_id])
    @menu = Menu.new
  end

  def create
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

end
