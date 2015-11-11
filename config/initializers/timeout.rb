# config/initializers/timeout.rb

# Be sure to restart your server when you modify this file.

# Abort requests that are taking too long; an exception is raised.
Rack::Timeout.timeout = 5 if Rails.env.production?
