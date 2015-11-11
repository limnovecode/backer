# adminboard/controllers/password_resets_controller.rb

class Adminboard::PasswordResetsController < AdminboardController
  skip_before_action :authorize_administrator
  before_action :check_current_administrator, only: [:new, :edit]
  before_action :set_administrator, only: [:edit, :update]

  def new
  end

  def create
    if @administrator = Administrator.find_by_email(params[:email])
      @administrator.send_reset_password
      flash[:success] = "An email has been sent with further instructions in order to reset your password."
      redirect_to adminboard_login_path
    else
      flash[:failure] = "Oops. Something went wrong."
      redirect_to adminboard_login_path
    end
  end

  def edit
  end

  def update
    if @administrator.reset_password_sent_at < 2.hours.ago
      flash[:failure] = "Oops. Something went wrong."
      redirect_to adminboard_login_path
    elsif @administrator.update_attributes(administrator_params)
      flash[:success] = "Your password was successfully updated."
      redirect_to adminboard_login_path
    else
      flash[:failure] = "Oops. Something went wrong."
      redirect_to adminboard_login_path
    end
  end

  private

  def check_current_administrator
    redirect_to adminboard_root_path if current_administrator.present?
  end

  def set_administrator
    @administrator = Administrator.find_by_reset_password_token!(params[:id])
  end

  def administrator_params
    params.require(:administrator).permit(:password, :password_confirmation)
  end
end
