class Menu < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates_associated :bookings
  validates :name, :price, :preparation_time, :min_guests, :max_guests, :category, presence: true
  validates :category, inclusion: { in:
    %w(Italian Chinese Japanese Belgian French Indian Lebanese Persian Italian Etiopian Vietnameese English Spanish Carribean Greek)}
  has_attachments :photos, maximum: 4
end
