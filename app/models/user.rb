class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :lastName, :email, :password, :password_confirmation, :remember_me, :lastName, :comfirmed, :state_id,
                  :phone, :city, :cedula, :points, :bday, :esta_inscrito, :tiene_intencion, :tiene_cedula, :zip,:assigned_to_id, :staff, :fb_token, :fb_image
  belongs_to :state
  belongs_to :assigned_to, :polymorphic => true
  has_many :exchanges
  has_many :invitations, :class_name => self.class.to_s, :as => :invited_by
  has_one :admin_user
  has_one :center, :through => :state
  
  validates_presence_of :name, :lastName, :email, :state_id, :city
  # validates_numericality_of :phone, :only_integer => true #, :message => "tiene que ser un numero"
  # validates_length_of :phone, :minimum => 10 #, :message => "debe ser mas de 10 digitos"
  validates_uniqueness_of :email #, :message => "ya fue usado"
  
  scope :invitado, where(:city => nil)
  scope :staff, where(:staff => true)
  scope :por_confirmar, where("city IS NOT NULL and comfirmed = 'f'")
  scope :registrado, where("city IS NOT NULL")
  scope :facebook, where("fb_token IS NOT NULL")
  scope :confirmado, where(:comfirmed => true)
  scope :embajador, where(:embajador => true)

  
  def self.t_cedula()
      yes = where(:tiene_cedula => true).count
      no = where(:tiene_cedula => false).count
      x = User.registrado.count - (yes + no)
      return "Si:" + yes.to_s + " ........ No: " + no.to_s + " ........ NA: " + x.to_s
  end
  def self.t_intencion()
      yes = where(:tiene_intencion => true).count
      no = where(:tiene_intencion => false).count
      x = User.registrado.count - (yes + no)
      return "Si:" + yes.to_s + " ........ No: " + no.to_s + " ........ NA: " + x.to_s
  end
  def self.e_inscrito()
      yes = where(:esta_inscrito => true).count
      no = where(:esta_inscrito => false).count
      x = User.registrado.count - (yes + no)
      return "Si:" + yes.to_s + " ........ No: " + no.to_s + " ........ NA: " + x.to_s
  end
  
  def self.asignados_a(user)
      where(:assigned_to_id => user)
  end
  
  def self.invitado_por(user)
      where(:invited_by_id => user)
  end
  
  def confirm(x)
    comfirmed=x
    # if invited_by
    #   invited_by.points += 1
    # end
  end
  
  def to_s
    "#{name} #{lastName.at(0)}"
  end
  
  
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    puts "ALL:"
    # puts access_token
    puts "Data:"
    data = access_token.extra.raw_info
    # puts data
    puts "Token:"
    # puts access_token.credentials.token
    token = access_token.credentials.token
    puts "Image:"
    # puts access_token.info.image
    image = access_token.info.image
    if user = User.where(:email => data.email).first
      user.fb_image = image unless user.fb_image != nil
      user.fb_token = token unless token == nil
      user.save!
      user
    else # Create a user with a stub password.
      user = FbGraph::User.me(token).fetch
      location = user.location.name.split(%r{,\s*})
      city = location[0]
      region = State.find_by_name(location[1]) unless State.find_by_name(location[1]) == nil
      u = User.new(:email => data.email, :password => Devise.friendly_token[0,20], :fb_token => token, :name => data.first_name, :lastName => data.last_name) 
      u.fb_image = image unless image == nil
      u.fb_token = token unless token == nil
      u.city = city unless city == nil
      u.state = region unless region == nil
      u.confirm!
      u.save!(:validate => false)
      u
    end
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"]
      end
    end
  end

end