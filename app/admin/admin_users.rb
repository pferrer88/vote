ActiveAdmin.register AdminUser, :as => "Admin" do
   menu :label => "Administradores", :parent => "| Admin |", :priority => 9 , :if => proc{ current_admin_user.super }
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
   filter :center
   filter :super
#   filter :state
#   filter :city
#   # filter :comfirmed
#   
#   
  index do  
    column :id
    column :user
    column :email
    column :center
    column :super
    default_actions
  end
#   
  form do |f|
   f.inputs "Informacion" do
     f.input :center
     f.input :user
     f.input :email
     if f.template.current_admin_user.super
       if f.template.controller.action_name == "new" 
         f.input :password
         f.input :password_confirmation
       end
       f.input :super
     end
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
