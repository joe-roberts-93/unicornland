class Unicorn < ApplicationRecord
  VARIETY = ["Bulky", "Fat", "Haunted", "Business", "Baby", "Cute", "Barbie"].freeze

  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  validates :name, :gender, :age, :color, :price, :variety, presence: true
end
