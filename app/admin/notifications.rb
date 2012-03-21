ActiveAdmin.register Notification, :as => "Correo" do
  menu :label => "Correo Masivo", :parent => "La Red"
  
  
  member_action :sendmail, :method => :put do
     notification = Notification.find(params[:id])
     notification.sent = DateTime.now
     if notification.save!

       case notification.recipients
       when 1
         current_admin_user.center.users.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end  
       when 2
         current_admin_user.center.users.registrado.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end
       when 3
         current_admin_user.center.users.embajador.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end
       when 4
         current_admin_user.center.users.staff.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end       
       else notice="No se envio ningun email"
       end

       notice="Emails enviados."
       redirect_to :action => :index, :notice => notice
     else
       redirect_to :action => :index, :notice => 'No se pudo enviar el correo.'
     end
  end
  
  
  
  
  index do  
    column :name  
    column "Recipients" do |noti|
      case noti.recipients
      when 1
        'Todos'
      when 2
        'Registrados'
      when 3
        'Embajadores'
      when 4
        'Staff'
      else
        "No asignado"
      end
    end
    column :sent
    default_actions
  end
  
  form do |f|
    f.inputs "Informacion" do
      f.input :name  
      f.input :title
      f.input :recipients, :as => :select, :collection => { "Todos" => 1, "Registrados" => 2, "Embajadores" => 3, "Staff" => 4 }
      f.input :content, :as => :ckeditor
    end
    f.buttons
  end
  
  show do |ad|
    attributes_table do
      row :name
      row :title
      
      row :recipients do
        case ad.recipients
        when 1
          'Todos'
        when 2
          'Registrados'
        when 3
          'Embajadores'
        when 4
          'Staff'
        else
          "No asignado"
        end
      end
      
      row :content do
        raw ad.content
      end
      
      row :sent
    end
    
    panel "Acciones" do
      render "send"
    end
    
    active_admin_comments
  end
  
  
end
