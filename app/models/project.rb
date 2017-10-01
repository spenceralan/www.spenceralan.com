class Project < ApplicationRecord
  belongs_to :admin
  has_attached_file :screenshot
  validates_attachment_content_type :screenshot, content_type: /\Aimage\/.*\z/
end