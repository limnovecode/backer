class Administrator < ActiveRecord::Base
  has_secure_password

  before_validation :generate_slug, on: :create, uniqueness: true
  before_validation :generate_auth_token, on: :create, uniqueness: true

  validates :email,    presence: true, uniqueness: :true, email: true

  def to_param
    slug
  end

  def send_reset_password
    generate_reset_password_token(:reset_password_token)
    self.reset_password_sent_at = Time.zone.now
    save!
    ResetPasswordMailer.reset_password(self).deliver_later
  end

  private

  include SlugGenerator
  include Adminboard::AuthTokenGenerator
  include Adminboard::ResetPasswordTokenGenerator
end
