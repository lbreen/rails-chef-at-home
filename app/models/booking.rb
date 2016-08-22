class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :user, presence:true
  validates :menu, presence:true
  validates :location, presence:true
  validates :time, presence:true
  validates :guests, presence:true
end
