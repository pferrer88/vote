class AboutController < ApplicationController
  def index
    @pages = Page.secondary.where(:title =>"Quienes Somos").all
    if current_user
      if p = current_user.center.pages.published.where(:title =>"Quienes Somos").first
        @page = p
      else
        @page = Page.published.main.where(:title =>"Quienes Somos").first
      end
    else
      @page = Page.published.main.where(:title =>"Quienes Somos").first
    end
  end

end
