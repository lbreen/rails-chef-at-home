class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :update, :destroy]
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
