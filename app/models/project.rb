class Project < ApplicationRecord
  belongs_to :admin
  has_attached_file :screenshot,  styles: {
    large: ["75%", :jpg],
    original: ["100%", :jpg]
  }
  validates_attachment_content_type :screenshot, content_type: /\Aimage\/.*\z/
end