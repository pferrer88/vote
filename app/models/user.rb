class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :lastName, :email, :password, :password_confirmation, :remember_me, :lastName, :comfirmed, :state_id,
                  :phone, :city, :cedula, :points, :bday, :esta_inscrito, :tiene_intencion, :tiene_cedula
  
  belongs_to :state
  has_many :exchanges
  has_many :invitations, :class_name => self.class.to_s, :as => :invited_by
  validates_presence_of :name, :lastName, :email, :state_id, :city
  validates_numericality_of :phone, :only_integer => true #, :message => "tiene que ser un numero"
  validates_length_of :phone, :minimum => 10 #, :message => "debe ser mas de 10 digitos"
  validates_uniqueness_of :email #, :message => "ya fue usado"
end