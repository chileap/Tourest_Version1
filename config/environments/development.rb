Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { host:'localhost:3000' }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.smtp_settings = {
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => 'localhost:3000',
      :user_name => "chhinchileap@gmail.com",
      :password => "chileapchhin",
      :authentication => :plain,
      :enable_starttls_auto => true
  }
  
end
