class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def new
    @booking = Booking.new
    @booking.menu = Menu.find(params[:menu_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.menu = Menu.find(params[:menu_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end



  def show
    @hash = Gmaps4rails.build_markers(@booking) do |booking, marker|
      marker.lat booking.latitude
      marker.lng booking.longitude
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:location, :datetime, :guests, :rating)
  end
end
