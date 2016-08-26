class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home


  def home
    @categories = %w(Italian Chinese Japanese Belgian French Indian Lebanese Persian Etiopian Vietnameese English Spanish Carribean Greek)
  end
end
