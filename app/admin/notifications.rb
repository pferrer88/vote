ActiveAdmin.register Notification do
  
  
  
  member_action :sendmail, :method => :put do
     notification = Notification.find(params[:id])
     notification.sent = DateTime.now
     if notification.save!

       case notification.recipients
       when 1
         User.all.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end  
       when 2
         User.registrado.all.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end
       when 3
         User.embajador.all.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end
       when 4
         User.invitado.all.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end
       when 5
         User.staff.all.each do |user|
           UserMailer.notification_send(user,notification).deliver
         end       
       else notice="No se envio ningun email"
       end

       notice="Emails enviados."
       redirect_to :action => :index, :notice => notice
     else
       redirect_to :action => :index, :notice => 'No se pudo enviar nada.'
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
        'Invitados'
      when 5
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
      f.input :recipients, :as => :select, :collection => { "Todos" => 1, "Registrados" => 2, "Embajadores" => 3, "Invitados" => 4, "Invitados" => 5 }
      f.input :content, :input_html => {:class => 'editor'}
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
          'Invitados'
        when 5
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
