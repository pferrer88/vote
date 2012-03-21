ActiveAdmin.register Page, :as => "Paginas"  do
  menu :label => "Paginas", :parent => "Contenido"
  index do  
    column :title 
    column :center
    column :published
    default_actions
  end
  
  form do |f|
    f.inputs "Informacion" do  
      f.input :center
      f.input :title
      f.input :pre_content, :as => :ckeditor
      f.input :content, :as => :ckeditor
      f.input :post_content, :as => :ckeditor
      f.input :modal, :as => :ckeditor
      f.input :published
    end
    f.buttons
  end
  
  show do |ad|
    attributes_table do
      row :center
      row :title
      row :pre_content
      row :content do
        raw ad.content
      end
      row :post_content
      row :modal
      row :published
    end
    active_admin_comments
  end
end
