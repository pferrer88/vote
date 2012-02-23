class AboutController < ApplicationController
  def index
    @page = Page.find_by_title("Quienes Somos")
  end

end
