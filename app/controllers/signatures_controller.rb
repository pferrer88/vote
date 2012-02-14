class SignaturesController < InheritedResources::Base
  def create
    cookies[:carta] = true
    create! { root_path } 
    flash[:notice] = "Gracias por firmar" 
  end
end
