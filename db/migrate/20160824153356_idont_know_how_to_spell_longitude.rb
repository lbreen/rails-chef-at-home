class IdontKnowHowToSpellLongitude < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :longtitude, :longitude
  end
end
