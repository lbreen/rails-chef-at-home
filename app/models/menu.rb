class Menu < ApplicationRecord
  belongs_to :user
  validates :name, :photo, :price, :preparation_time, :min_guests, :max_guests, :category, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(Italian, Chinese, Japanese, Belgian, French, Indian, Lebanese, Persian, Italian, Etiopian, Vietnameese, English, Spanish, Carribean, Greek)}
  validates
end
