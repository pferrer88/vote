ActiveAdmin.register Product do
  
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
  
end
