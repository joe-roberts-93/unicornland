class Unicorn < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, :gender, :age, :color, :price, :type, presence: true
end
