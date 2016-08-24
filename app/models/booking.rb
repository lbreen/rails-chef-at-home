class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :location, presence: true
  validates :datetime, presence: true
  validates :guests, presence: true, numericality: true
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
