class Notification < ActiveRecord::Base
  validates_presence_of :name, :title, :content, :recipients
  
  
  
  # after_create :send_mail
  # 
  # def send_mail(users)
  #   users.each do |user|
  #     UserMailer.notification_send(user).deliver
  #   end
  # end
  
end
