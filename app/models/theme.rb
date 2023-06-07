class Theme < ApplicationRecord
  belongs_to :user
  has_many :topics, dependent: :destroy
  # has_many :collaborations

end
