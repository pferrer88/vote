ActiveAdmin.register Exchange do
  scope :all, :default => true
  scope :procesando
  scope :aceptados
  scope :enviados

  index do  
    column :user
    column :product
    column :quantity
    column :city  
    column :state
    column :status
    column :created_at
    default_actions
    # column "Acciones" do |exchange|
    #   span link_to "Ver", admin_exchange_path(exchange) 
    #     link_to "Eliminar", admin_exchange_path(exchange), :method => :delete     
    # end
  end
  
  show do
    panel "Detalles de Compra" do
      render "show"
    end
    active_admin_comments
  end
  
  form do |f|
    f.inputs "Informacion" do
      f.input :status, :as => :select, :collection => ["Procesando", "Aceptado", "Enviado"]
    end
    f.buttons
  end
  
end


