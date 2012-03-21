class ContactController < ApplicationController
  def index
    @pages = Page.secondary.where(:title =>"Contact").all
    
    if current_user
      if current_user.center != nil
        x = current_user.center.pages
        if x != nil 
          @page = x.published.where(:title =>"Contact").first
        else
          @page = Page.published.main.where(:title =>"Contact").first
        end
      end
      
    else
      @page = Page.published.main.where(:title =>"Contact").first
    end

  end

end
