class Chef::BookingsController < ApplicationController

# this is controller to view bookings as a chef - aka the 'orders' you have from people who have booked you.
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  before_action :set_user, only: [:show]
  def index
    @bookings = Booking.where(chef: current_user)
  end

end
