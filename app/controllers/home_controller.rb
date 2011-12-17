class HomeController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @invites = User.where(:invited_by_id => current_user)
  end
end
