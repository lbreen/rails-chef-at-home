class User::BookingsController < ApplicationController

  # this is controller to interact with bookings as a user(customer) - aka the 'orders' you have placed to book a chef.
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
