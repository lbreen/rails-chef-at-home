class Chef::BookingsController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    @bookings = Booking.where(chef: current_user)
  end

  def show
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
