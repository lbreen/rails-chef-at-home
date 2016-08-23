class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, uniqueness: true
  has_many :bookings
  has_many :menus

  #  These validations are not needed as we do not want to require them on sign up
  # validates :first_name, :last_name, presence: true
  # validates :description, presence: true, length: { in: 0..150 }
end
