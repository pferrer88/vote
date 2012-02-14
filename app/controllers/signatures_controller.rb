class SignaturesController < InheritedResources::Base
  def create
    cookies[:carta] = true
    create!(:notice => "Gracias por firmar.") { root_path }
  end
end
