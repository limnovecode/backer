# mailer/reset_password_mailer.rb

class ResetPasswordMailer < ActionMailer::Base
  # Default Settings
  default from: "no-reply@lim9.com"
  # Password Reset
  def reset_password(admin)
    @administrator = admin
    mail(
      to: @administrator.email,
      subject: "Password Reset Request",
      template_path: "adminboard/mailers"
    )
  end
end
