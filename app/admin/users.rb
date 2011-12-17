ActiveAdmin.register User do
  filter :lastName
  filter :cedula
  filter :email
  filter :state
  filter :city
  filter :comfirmed
  
  index do  
    column :name  
    column :lastName  
    column :email  
    column :city  
    column :state
    column :comfirmed  
    default_actions
  end
  form do |f|
    f.inputs "Informacion" do
      f.input :name
      f.input :lastName 
      f.input :email
      f.input :city
      f.input :state
      f.input :comfirmed
    end
    f.buttons
  end
end
