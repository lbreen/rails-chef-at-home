class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :user, :menu, :location, :time, :guests, presence:true
end
