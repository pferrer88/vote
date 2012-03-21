class Page < ActiveRecord::Base
  has_many :images
  belongs_to :center
  
  scope :published, where(:published => true)
  scope :main, where(:center_id => nil)
  scope :secondary, where("center_id IS NOT NULL")

end
