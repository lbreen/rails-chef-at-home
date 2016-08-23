class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.menu = Menu.find(params[:menu_id])
    @booking.user = current_user
    @booking.save
  end

  def show

  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:location, :time, :guests, :rating)
  end
end
