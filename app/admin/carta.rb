ActiveAdmin.register Cartum, :as => "Recolectas" do
  menu :label => "Recolecta de Firmas", :parent => "La Red"
  
  index do  
    column :name  
    default_actions
  end
  
  form do |f|
    f.inputs "Informacion" do
      f.input :name  
      f.input :title
      f.input :content, :input_html => {:class => 'editor'}
      f.input :active
    end
    f.buttons
  end
  
  show do |ad|
    attributes_table do
      row :title
      row :name
      row :content do
        raw ad.content
      end
      row :active
    end
    panel "Firmas" do
      render "firmas"
    end
    active_admin_comments
  end
end
