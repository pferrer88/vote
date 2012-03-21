class InformationController < ApplicationController
  def index
    @pages = Page.secondary.where(:title =>"Informacion Electoral").all
    
    if current_user
      if current_user.center != nil
        x = current_user.center.pages
        if x != nil 
          @page = x.published.where(:title =>"Informacion Electoral").first
        else
          @page = Page.published.main.where(:title =>"Informacion Electoral").first
        end
      end
      
    else
      @page = Page.published.main.where(:title =>"Informacion Electoral").first
    end

  end

end
