class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    if current_user
      @invites = User.invitado_por(current_user).page(params[:invite_page]).per(5)
      @exchanges = Exchange.comprado_por(current_user).page(params[:exchange_page]).per(5)
    else
      @invited_count = User.count
      @confirmed_count = User.confirmado.count
      @embajador_count = User.embajador.count
    end  
  end

end
