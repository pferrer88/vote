class Center < ActiveRecord::Base
  belongs_to :country
  
  has_many :states
  has_many :users, :through => :states
  attr_accessible :name, :address, :phone, :country, :website, :email, :hours
  has_many :pages
end
