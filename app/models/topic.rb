class Topic < ApplicationRecord
  belongs_to :theme
  # belongs_to :user
  has_many :items, dependent: :destroy

  has_one_attached :photo

end
