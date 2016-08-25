class User::BookingsController < ApplicationController

  # this is controller to interact with bookings as a user(customer) - aka the 'orders' you have placed to book a chef.
  def index
    @bookings_as_user = Booking.where(user: current_user)
    @bookings_as_chef = Booking.where(menu: current_user.menus)
  end

end
