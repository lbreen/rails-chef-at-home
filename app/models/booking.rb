class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :user, :menu, :location, :time, :guests, presence:true
  validates :guests, inclusion: { in: %w(5..10)}
end
