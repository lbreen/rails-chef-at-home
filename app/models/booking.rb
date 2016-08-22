class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :user, presence:true
end
