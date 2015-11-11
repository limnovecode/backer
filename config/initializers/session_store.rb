# config/initializers/session_store.rb

# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: ENV["COOKIE_SESSION"] || "_backer_session"
