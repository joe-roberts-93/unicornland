class Unicorn < ApplicationRecord
  GENDER = ["male", "female"].freeze
  AGE = (1..12).to_a.freeze
  COLOR = ["blue", "pink", "orange", "gray", "purple", "silver", "bronze"].freeze
  PRICE = [25, 50, 500, 1000, 5000, 10_000, 100_000].freeze
  VARIETY = ["Bulky", "Fat", "Haunted", "Business", "Murder", "Cute", "Barbie"].freeze

  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  validates :name, :gender, :age, :color, :price, :variety, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: %i[name gender age color price variety],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
