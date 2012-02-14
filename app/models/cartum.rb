class Cartum < ActiveRecord::Base
  has_many :signatures
  scope :activo, where(:active => true).limit(1)
  
  attr_accessible :content, :title, :cartum_id
end
