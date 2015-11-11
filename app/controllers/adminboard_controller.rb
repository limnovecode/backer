# controllers/adminboard_controller.rb

class AdminboardController < ApplicationController
  before_action :authorize_administrator
  layout :layout_to_render

  private

  # Defines the layout based on the administrator agent.
  def layout_to_render
    if browser.modern?
      "adminboard/application"
    else
      "adminboard/application"
    end
  end

  # Setup the current_administrator method.
  def current_administrator
    @current_administrator ||= Administrator.find_by_authentication_token!(session[:authentication_token]) if session[:authentication_token]
  end

  # Verifies if the Administrator is Logged in or not.
  def authorize_administrator
    redirect_to adminboard_login_path if current_administrator.nil?
  end

  # Creates the current_administrator.
  helper_method :current_administrator
end
