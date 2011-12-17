class UsersController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :json


  def show
      @user = User.find(params[:id])
      @invites = User.where(:invited_by_id => current_user)
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end

end
