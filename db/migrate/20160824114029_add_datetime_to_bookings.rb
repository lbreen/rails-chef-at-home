class AddDatetimeToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :datetime, :datetime
  end
end
