class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :user, :menu, :location, :time, :guests, presence:true
  validates :guests, inclusion: {in: %w(1..5)}
  validates :rating, inclusion: {in: %w(1..5)}
end
