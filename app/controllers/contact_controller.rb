class ContactController < ApplicationController
  def index
    @pages = Page.secondary.where(:title =>"Contacto").all
    if current_user
      if p = current_user.center.pages.published.where(:title =>"Contacto").first
        @page = p
      else
        @page = Page.published.main.where(:title =>"Contacto").first
      end
    else
      @page = Page.published.main.where(:title =>"Contacto").first
    end
  end

end
