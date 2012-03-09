ActiveAdmin.register Country do
  menu :label => "Paises", :parent => "La Red", :priority => 3
  scope_to :current_admin_user
  
  index do  
    column :name  
    column :short
    default_actions
  end
  
  form do |f|
    f.inputs "Informacion" do
      f.input :name  
      f.input :short
    end
    f.buttons
  end
end
