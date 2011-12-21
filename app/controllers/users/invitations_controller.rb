class Users::InvitationsController < Devise::InvitationsController
  
  # GET /resource/invitation/new
    def new
      build_resource
      render_with_scope :new
    end

  
  # POST /resource/invitation
  def create
    self.resource = resource_class.invite!(params[resource_name], current_inviter)

    if resource.errors.empty? and resource.name != nil
      set_flash_message :notice, :send_instructions, :email => self.resource.email
      respond_with resource, :location => after_invite_path_for(resource)
    else
      # @user = current_user
      # @invites = User.where(:invited_by_id => current_user)
      # render 'home/index'
      respond_with_navigational(resource) { render_with_scope :new }
      # respond_with resource, :location => after_invite_path_for(resource)
    end
  end
end