ActiveAdmin.register State do
  
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
