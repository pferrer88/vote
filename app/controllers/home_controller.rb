class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    if current_user
      @invites = User.invitado_por(current_user).page(params[:invite_page]).per(5)
      @exchanges = Exchange.comprado_por(current_user).page(params[:exchange_page]).per(5)
    else
      @registered_count = User.registrado.count
      #@confirmed_count = User.confirmado.count
      @embajador_count = User.embajador.count
    end  
    
    if Cartum.activo.count != 0
      @carta = Cartum.activo
      @signature = @carta[0].signatures.build #Signature.new(:cartum_id => @carta[0].id)
    end
  end

end
