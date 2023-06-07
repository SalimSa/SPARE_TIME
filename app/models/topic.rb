class Topic < ApplicationRecord
  belongs_to :theme
  has_many :items, dependent: :destroy

  has_one_attached :photo

end
