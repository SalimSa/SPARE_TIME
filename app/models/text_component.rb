class TextComponent < ApplicationRecord
  belongs_to :item
  has_one_attached :photo
end
