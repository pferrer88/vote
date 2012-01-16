class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    @invited_count = User.count
    @confirmed_count = User.confirmado.count
    @embajador_count = User.embajador.count
    @invites = User.invitado_por(current_user).page(params[:page]).per(5)
  end
end
