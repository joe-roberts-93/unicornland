class Unicorn < ApplicationRecord
  VARIETY = ["bulky", "Fat", "Haunted", "Chubby", "Baby", "Cute", "Barbie"].freeze

  belongs_to :user
  has_many :reservations

  validates :name, :gender, :age, :color, :price, :variety, presence: true
end
