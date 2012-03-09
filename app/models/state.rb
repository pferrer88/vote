class State < ActiveRecord::Base
  belongs_to :country
  belongs_to :center
  has_many :admin_users
  has_many :users
  attr_accessible :name, :short, :totalVoters, :registeredVoters, :country_id, :center_id, :center
  
end
