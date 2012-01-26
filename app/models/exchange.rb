class Exchange < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :state
  attr_accessible :quantity, :product_id, :user_id, :points, :address, :city, :state_id, :zip, :phone, :status
  
  validates_presence_of :user_id, :product_id, :address, :state_id, :city, :quantity
  validates_numericality_of :points, :zip, :phone, :only_integer => true
  validates :status, :inclusion => { :in => %w(Procesando Aceptado Enviado),
      :message => "%{value} no es un status valido" }
      
  scope :procesando, where(:status =>"Procesando")
  scope :aceptados, where(:status =>"Aceptado")
  scope :enviados, where(:status =>"Enviado")

  def self.comprado_por(user)
      where(:user_id => user)
  end
  
  def owner()
    user.name
  end
  
end
