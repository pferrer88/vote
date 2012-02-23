ActiveAdmin.register Image, :as => "Pic" do
  menu :label => "Imagenes", :parent => "Contenido"
  
  index do  
    column :id
    column :img
    column :name  
    column :description 
    default_actions
  end
  
  form(:html => { :multipart => true }) do |f|
    f.inputs "Image" do
      f.input :name
      f.input :description
      f.input :img, :as => :file
    end
    f.buttons
  end
  
  show do |ad|
    attributes_table do
      row :name
      row :img do
        image_tag(ad.img)
      end
    end
    active_admin_comments
  end
  
end
