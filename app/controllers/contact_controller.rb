class ContactController < ApplicationController
  def index
    @page = Page.find_by_title("Contacto")
  end

end
