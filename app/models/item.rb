class Item < ApplicationRecord
  belongs_to :topic
  has_many :components, dependent: :destroy

end
