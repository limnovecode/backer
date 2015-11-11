# config/initializers/figaro.rb

# Be sure to restart your server when you modify this file.

# If a particular configuration value is required but not set,
# it's appropriate to raise an error. With Figaro, you can either
# raise these errors proactively or lazily.
if Rails.env.development? || Rails.env.test?
  Figaro.require_keys(
    "STORAGE_REGION",
    "STORAGE_ACCESS_KEY_ID",
    "STORAGE_SECRET_ACCESS_KEY",
    "TE_DOMAIN",
    "TE_USER_NAME",
    "TE_PASSWORD"
  )
end
