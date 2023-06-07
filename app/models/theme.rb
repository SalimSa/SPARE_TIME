class Theme < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy
  # has_many :collaborations

  has_one_attached :photo
end
