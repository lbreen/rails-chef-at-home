class User::BookingsController < ApplicationController

  # this is controller to interact with bookings as a user(customer) - aka the 'orders' you have placed to book a chef.
  def index
    @bookings = Booking.where(user: current_user)
  end

end
