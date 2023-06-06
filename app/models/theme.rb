class Theme < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy
  has_many :collaborations

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_price_and_location,
    against: [ :title, :description, :price, :location ],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
