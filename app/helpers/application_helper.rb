module ApplicationHelper
  
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  def twitterized_type(type)
    case type
      when :alert
        "warning"
      when :error
        "error"
      when :notice
        "info"
      when :success
        "success"
      else
        type.to_s
    end
  end
  
  # def devise_error_messages!
  #     return "" if resource.errors.empty?
  # 
  #     messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
  #     sentence = I18n.t("errors.messages.not_saved",
  #                       :count => resource.errors.count,
  #                       :resource => resource_name)
  # 
  #     html = <<-HTML
  #     <div class="alert-message block-message error">
  #       <h3>#{sentence}</h3>
  #       <ul>#{messages}</ul>
  #     </div>
  #     HTML
  # 
  #     html.html_safe
  # end
  
end
