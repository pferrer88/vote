class State < ActiveRecord::Base
  has_many :users
  attr_accessible :name, :short, :totalVoters, :registeredVoters
end
