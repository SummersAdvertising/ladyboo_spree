# Use this initializer to configure the claim mailer.

SpreeClaim.setup do |config|

  # ==> Mailer Configuration

  # Configure the e-mail address which email notifications should be sent from.  If emails must be sent from a verified email address you may set it here.
  # Example:
  # config.mailer_from = "contact@please-change-me.com"
  config.mailer_from = "no-reply@summers.com.tw"      # nil

  # Configure the e-mail address which should receive the contact form email notifications.
  # config.mailer_to = "chris@summers.com.tw"         # "contact@please-change-me.com"
  config.mailer_to = "chris@summers.com.tw"     
end
