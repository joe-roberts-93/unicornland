class Unicorn < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, :gender, :age, :color, :price, :variety, presence: true
end
