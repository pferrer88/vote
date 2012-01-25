class Product < ActiveRecord::Base
 attr_accessible :image, :name, :description, :cost, :quantity
 validates_presence_of :name, :description
 validates_numericality_of :cost, :quantity
 mount_uploader :image, ImageUploader
 
 has_many :exchanges

end
