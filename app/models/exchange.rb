class Exchange < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  attr_accessible :quantity, :product_id, :user_id, :points, :address, :city, :zip, :phone
end
