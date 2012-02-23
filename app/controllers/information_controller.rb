class InformationController < ApplicationController
  def index
    @page = Page.find_by_title("Informacion Electoral")
  end

end
