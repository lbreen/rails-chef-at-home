class RemoveTimeFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :time, :date
  end
end
