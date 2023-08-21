class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :unicorn

  validates :date, presence: true
end
