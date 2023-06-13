class Item < ApplicationRecord
  belongs_to :topic
  # has_many :components, dependent: :destroy
  has_one_attached :photo
  has_many :locations, dependent: :destroy

  has_many :calendar_components, dependent: :destroy

  has_many :task_components, dependent: :destroy
  has_many :text_components, dependent: :destroy
  def start_time
    self.calendar_component.start
  end

end
