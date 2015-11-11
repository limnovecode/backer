# adminboard/controllers/sessions_controller.rb

class Adminboard::SessionsController < AdminboardController
  skip_before_action :authorize_administrator

  def new
    # redirect_to adminboard_root_path if current_admin.present?
  end

  def create
    administrator = Administrator.find_by_email(params[:email])
    if administrator && administrator.authenticate(params[:password])
      session[:authentication_token] = administrator.authentication_token
      redirect_to adminboard_root_url
    else
      redirect_to adminboard_login_path
    end
  end

  def destroy
    session[:authentication_token] = nil
    redirect_to root_path if session.destroy
  end
end
