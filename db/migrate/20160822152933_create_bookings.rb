class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :menu, foreign_key: true
      t.string :location
      t.date :time
      t.integer :guests

      t.timestamps null: false
    end
  end
end
