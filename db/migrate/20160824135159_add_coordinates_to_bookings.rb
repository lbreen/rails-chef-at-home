class AddCoordinatesToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :latitude, :float
    add_column :bookings, :longtitude, :float
  end
end
