class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :unicorns
  has_many :reservations
  has_many :bookings_as_owner, through: :unicorns, source: :reservations
end
