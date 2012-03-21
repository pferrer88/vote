class ContactController < ApplicationController
  def index
    
    @pages = Page.secondary.where(:title =>"Contacto").all
    if current_user
      
      if current_user.center != nil
        x = current_user.center.pages
        
        if x.first != nil 
          @page = x.published.where(:title =>"Contacto").first
        else
          @page = Page.published.main.where(:title =>"Contacto").first
        end
        
      else
        @page = Page.published.main.where(:title =>"Contacto").first
      end
      
    else
      @page = Page.published.main.where(:title =>"Contacto").first
    end
    
  end

end
