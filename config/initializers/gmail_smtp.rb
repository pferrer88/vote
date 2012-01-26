ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'embajadordelvoto.org',
  :user_name            => 'embajador',
  :password             => 'schloeter',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }
}
