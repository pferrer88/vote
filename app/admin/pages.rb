ActiveAdmin.register Page, :as => "Paginas"  do
  menu :label => "Paginas", :parent => "Contenido"
  index do  
    column :title  
    default_actions
  end
  
  form do |f|
    f.inputs "Informacion" do  
      f.input :title
      f.input :content, :input_html => {:class => 'editor'}
    end
    f.buttons
  end
  
  show do |ad|
    attributes_table do
      row :title
      row :content do
        raw ad.content
      end
    end
    active_admin_comments
  end
end
