class Photo < ApplicationRecord
  # mount_uploarder:file_location , PhotoImageUploader
  validates_presence_of :title, :date, :description, :file_location
end
