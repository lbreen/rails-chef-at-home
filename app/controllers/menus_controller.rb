class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_menu, only: [:show]
  def index
    @menus = Menu.all
  end

  def show
  end


  def set_menu
    @menu = Menu.find(params[:id])
  end

end
