class Chef::BookingsController < ApplicationController

# this is controller to view bookings as a chef - aka the 'orders' you have from people who have booked you.
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
