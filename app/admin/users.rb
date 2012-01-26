ActiveAdmin.register User do
  
# Create sections on the index screen
  scope :all
  scope :invitado
  scope :por_confirmar, :default => true
  scope :confirmado
  scope :embajador
  
  
  filter :lastName
  filter :cedula
  filter :email
  filter :state
  filter :city
  filter :comfirmed
  
  
  index do  
    column "Nombre" do |user|
          link_to user.name+" "+user.lastName, admin_user_path(user)
    end 
    column :email  
    column :city  
    column :state
    column :comfirmed
    column :points
    column "Acciones" do |user|
      span link_to "Eliminar", admin_user_path(user), :method => :delete      
      if (user.city != nil and !user.comfirmed)      
        link_to "Confirmar", confirm_admin_user_path(user), :method => :put
      end
    end
  end
  
  form do |f|
    f.inputs "Informacion" do
      f.input :name
      f.input :lastName 
      f.input :email
      f.input :city
      f.input :state
      f.input :phone
      f.input :comfirmed
      f.input :points
    end
    f.buttons
  end
  
  show do
    panel "Detalles para " + user.name do
      render "show"
    end
  end
  

  member_action :confirm, :method => :put do
     user = User.find(params[:id])
     user.comfirmed = true
     if user.save!
       if user.invited_by
         user.invited_by.points += 1
         user.invited_by.embajador=true
         user.invited_by.save!
       end
       redirect_to :action => :index, :notice => 'Usuario Confirmado.'
     else
       redirect_to :action => :index, :notice => 'Usuario no se puede confirmar.'
     end
  end

   
end
