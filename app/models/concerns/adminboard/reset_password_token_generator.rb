# model/concerns/adminboard/reset_password_token_generator.rb

module Adminboard::ResetPasswordTokenGenerator
  extend ActiveSupport::Concern

  # Reset Password Token Generator
  def generate_reset_password_token(column)
    loop do
      self[column] = SecureRandom.urlsafe_base64
      break unless Administrator.exists?(reset_password_token: self[column])
    end
  end
end
