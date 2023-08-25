class Unicorn < ApplicationRecord
  GENDER = ["male", "female"].freeze
  AGE = (1..12).to_a.freeze
  COLOR = ["gold", "pink", "white", "green", "purple"].freeze
  PRICE = [10_000, 15_000, 20_000, 50_000, 70_000, 250_000, 300_000, 500_000, 1_000_000].freeze
  VARIETY = ["Bulky", "Fat", "Haunted", "Business", "Murder", "Cute", "Barbie"].freeze

  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  validates :name, :gender, :age, :color, :price, :variety, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: :name,
                  using: {
                    tsearch: { prefix: true }
                  }

  pg_search_scope :search_by_gender,
                  against: :gender

  pg_search_scope :search_by_age,
                  against: :age

  pg_search_scope :search_by_color,
                  against: :color

  pg_search_scope :search_by_price,
                  against: :price

  pg_search_scope :search_by_variety,
                  against: :variety
end
