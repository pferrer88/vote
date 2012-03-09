ActiveAdmin.register State do
  menu :label => "Estados", :parent => "La Red", :priority => 2
  scope_to :current_admin_user
  
  index do  
    column :name  
    column :short
    column :country
    column :center
    default_actions
  end
  
  form do |f|
    f.inputs "Informacion" do
      f.input :name  
      f.input :short
      f.input :center
      f.input :country
    end
    f.buttons
  end
  
  show do |ad|
    attributes_table do
      row :name
      row :short 
      row :center 
      row :country 
    end
    active_admin_comments
  end
end
