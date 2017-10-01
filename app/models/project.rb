class Project < ApplicationRecord
  belongs_to :admin
  has_attached_file :screenshot,  styles: {
    large: ["75%", :jpg],
    original: ["100%", :jpg]
  }
  validates_attachment_content_type :screenshot, content_type: /\Aimage\/.*\z/

  scope :visible, -> { where(visible: true) }
  scope :hidden, -> { where(visible: false) }
  scope :ordered, -> { order(:order) }
  scope :for_display, -> { ordered.visible }
end