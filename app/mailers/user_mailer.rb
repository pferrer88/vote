class UserMailer < ActionMailer::Base
  default :from => "embajador@embajadordelvoto.org"
  
  def notification_send(user, notification)
    @notification = notification
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => notification.title)
  end
end
