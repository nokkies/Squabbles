class Squabbler < ApplicationRecord
  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.png"
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
