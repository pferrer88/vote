class InformationController < ApplicationController
  def index
    @pages = Page.secondary.where(:title =>"Informacion Electoral").all
    if current_user
      if p = current_user.center.pages.published.where(:title =>"Informacion Electoral").first
        @page = p
      else
        @page = Page.published.main.where(:title =>"Informacion Electoral").first
      end
    else
      @page = Page.published.main.where(:title =>"Informacion Electoral").first
    end
  end

end
