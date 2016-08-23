class User::BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show

  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save

  end

  def destroy
    @booking.destroy

  end

  private

  def set_booking
      @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:location, :time, :guests, :rating)
  end

end
