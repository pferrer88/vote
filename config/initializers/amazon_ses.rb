ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  :access_key_id     => ENV['AKIAJROYHH2JACZ4HJZA'],
  :secret_access_key => ENV['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']