class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :location, presence: true
  validates :datetime, presence: true
  validates :guests, presence: true, numericality: true
  validate :booking_date_cannot_be_in_the_past
  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  def booking_date_cannot_be_in_the_past
    if datetime < Date.today
      errors.add(:datetime, "Cannot be in the past")
    end
  end
end

