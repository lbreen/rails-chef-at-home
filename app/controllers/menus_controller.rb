class MenusController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @menus = Menu.all
  end
end