class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :unicorn

  validates :date, presence: true
  validates :date, comparison: { greater_than_or_equal_to: Date.today }
end
