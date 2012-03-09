ActiveAdmin.register Center, :as => "Consulados"  do
  menu :label => "Consulados", :parent => "La Red", :priority => 4
  scope_to :current_admin_user
  # scope :all, :default => true
  # scope :procesando
  # scope :aceptados
  # scope :enviados

  index do  
    column :name
    column :country
    column :address
    column :phone
    default_actions
    # column "Acciones" do |exchange|
    #   span link_to "Ver", admin_exchange_path(exchange) 
    #     link_to "Eliminar", admin_exchange_path(exchange), :method => :delete     
    # end
  end
  
  # show do
  #   panel "Detalles de Compra" do
  #     render "show"
  #   end
  #   active_admin_comments
  # end
  
  show do |ad|
    attributes_table do
      row :name
      row :country
      row :name
      row :address
      row :phone
      row :website
      row :email
      row :hours
    end
    active_admin_comments
  end
  
  form do |f|
    f.inputs "Informacion" do
      f.input :country
      f.input :name
      f.input :address
      f.input :phone
      f.input :website
      f.input :email
      f.input :hours
    end
    f.buttons
  end
  
end