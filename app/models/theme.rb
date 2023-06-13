class Theme < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy
  has_many :items, through: :topics
  has_many :task_components, through: :items
  # has_many :collaborations
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
