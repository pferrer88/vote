class AboutController < ApplicationController
  def index
 
    @pages = Page.secondary.where(:title =>"Quienes Somos").all
    if current_user
      
      if current_user.center != nil
        x = current_user.center.pages
        
        if x.first != nil 
          @page = x.published.where(:title =>"Quienes Somos").first
        else
          @page = Page.published.main.where(:title =>"Quienes Somos").first
        end
        
      else
        @page = Page.published.main.where(:title =>"Quienes Somos").first
      end
      
    else
      @page = Page.published.main.where(:title =>"Quienes Somos").first
    end

    
  end

end
