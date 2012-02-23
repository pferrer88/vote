class Image < ActiveRecord::Base
  attr_accessible :name, :description, :img, :page_id, :page
  mount_uploader :img, ImageUploader
  
end
