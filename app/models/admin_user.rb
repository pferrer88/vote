class AdminUser < ActiveRecord::Base
  belongs_to :center
  belongs_to :user
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :center_id, :super, :user_id
  validates_presence_of :center_id
  
  def users
    if self.super
      User
    else
      center.users.includes(:invitations)
    end  
  end
  
  def states
    if self.super
      State
    else
      center.states
    end
  end
  
  def countries
    if self.super
      Country
    else
      Country.where(:id => center.country.id)
    end
  end
  
  def consulados
    if self.super
      Center
    else
      Center.where(:id => center_id)
    end
  end
  
end
