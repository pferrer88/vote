class UsersController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :json

  def show
    @user = User.find(params[:id])
    @invites = User.invitado_por(current_user)
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end
  
  # get /red
  def red
    @user = User.find(params[:id])
    @invites = User.where(:invited_by_id => current_user).page(params[:page]).per(10)
  end
    
end
