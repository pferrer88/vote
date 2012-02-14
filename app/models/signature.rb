class Signature < ActiveRecord::Base
  belongs_to :cartum
  validates_presence_of :name, :cedula, :cartum_id
  validates_numericality_of :cedula, :only_integer => true, :message => "tiene que ser un numero"
  validates_uniqueness_of :cedula
  attr_accessible :name, :cedula, :cartum_id
end
