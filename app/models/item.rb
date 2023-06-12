class Item < ApplicationRecord
  belongs_to :topic
  # has_many :components, dependent: :destroy
  has_one_attached :photo
  has_many :locations, dependent: :destroy
end
