class ApplicationMailer < ActionMailer::Base
  # below is the displayed from email default
  default from: "noreply@example.com"
  layout 'mailer'
end
