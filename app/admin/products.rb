ActiveAdmin.register Product do
  index do  
    column :name  
    column :description  
    column :cost  
    column :quantity
    default_actions
  end
end
