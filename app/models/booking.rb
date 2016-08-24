class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :location, presence: true
  validates :time, presence: true
  validates :guests, presence: true, numericality: true
end
