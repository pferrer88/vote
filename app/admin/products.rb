ActiveAdmin.register Product do
  menu :label => "Productos", :parent => "Tienda"
  
  index do  
    column :name  
    column :description  
    column :cost  
    column :quantity
    default_actions
  end
  
  form(:html => { :multipart => true }) do |f|
    f.inputs "Product" do
      f.input :name
      f.input :description
      f.input :image, :as => :file
      f.input :quantity
      f.input :cost
    end
    f.buttons
  end
  
  show do |ad|
    attributes_table do
      row :name
      row :image do
        image_tag(ad.image)
      end
      row :description
      row :quantity
      row :cost
    end
    active_admin_comments
  end
end
