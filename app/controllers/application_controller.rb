# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_to_render

  private

  # Defines the layout based on the user agent.
  def layout_to_render
    if browser.modern?
      "application"
    else
      "application"
    end
  end
end
