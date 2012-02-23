ActiveAdmin.register AdminUser, :as => "Admin" do
   menu :label => "Administradores", :parent => "-Admin-", :priority => 9
# # Create sections on the index screen
#   scope :all
#   scope :registrado, :default => true
#   # scope :confirmado
#   scope :embajador
#   scope :invitado
#   scope :staff
#   
#   
#   filter :lastName
#   filter :cedula
   filter :email
#   filter :state
#   filter :city
#   # filter :comfirmed
#   
#   
  index do  
    column :id
    column :email  
    default_actions
  end
#   
   form do |f|
     f.inputs "Informacion" do
#       f.input :name
#       f.input :lastName 
       f.input :email
       f.input :password
       f.input :password_confirmation
#       f.input :state
#       f.input :phone
#       f.input :comfirmed
#       f.input :points
#       f.input :staff
#       f.input :assigned_to_id,  :as => :select, :collection => User.where(:staff => true)
     end
     f.buttons
   end
#   
#   show do
#     panel "Info Personal" do
#       render "show_u_personal"
#     end
#     panel "Encuesta" do
#       render "show_u_optional"
#     end
#     panel "Conexiones" do
#       render "show_u_connections"
#     end
#     active_admin_comments
#   end
#   
# 
#   member_action :confirm, :method => :put do
#      user = User.find(params[:id])
#      user.comfirmed = true
#      if user.save!
#        ## This was before when the confirmation action was the one that generated the point, it was changed to the invitations_controller update action
#        # if user.invited_by
#        #   user.invited_by.points += 1
#        #   user.invited_by.embajador=true
#        #   user.invited_by.save!
#        # end
#        redirect_to :action => :index, :notice => 'Usuario Confirmado.'
#      else
#        redirect_to :action => :index, :notice => 'Usuario no se puede confirmar.'
#      end
#   end

   
end
