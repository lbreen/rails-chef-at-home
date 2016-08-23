class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, presence: true
  validates :email_address, :postal_address, presence: true, uniqueness: true
  validates :description, presence: true, length: { in: 0..150 }
  has_many :bookings
  has_many :menus
end
