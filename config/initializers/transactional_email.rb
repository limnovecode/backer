# config/initializers/mailgun

# Be sure to restart your server when you modify this file.

# Note: Environment Variables are setup in config/application.yml

# Setup Transactional Email.
Rails.application.config.action_mailer.delivery_method = :smtp
Rails.application.config.action_mailer.default charset: "utf-8"
Rails.application.config.action_mailer.default_url_options = { host: ENV["CANONICAL_HOST"] }
Rails.application.config.action_mailer.smtp_settings = {
  authentication: "plain",
  address: "smtp.mailgun.org",
  port: "587",
  domain: ENV["TE_DOMAIN"] || "please-run-figaro",
  user_name: ENV["TE_USER_NAME"] || "please-run-figaro",
  password: ENV["TE_PASSWORD"] || "please-run-figaro"
}
