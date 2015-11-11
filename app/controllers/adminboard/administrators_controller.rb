class Adminboard::AdministratorsController < AdminboardController
  before_action :set_administrator, only: [:show, :edit, :update, :destroy]

  def index
    @administrators = Administrator.all
  end

  def show
  end

  def new
    @administrator = Administrator.new
  end

  def edit
  end

  def create
    @administrator = Administrator.new(administrator_params)

    if @administrator.save
      flash[:success] = "Administrator was successfully created."
      redirect_to [:adminboard, @administrator]
    else
      flash.now[:failure] = "Oops. Something went wrong."
      render action: "new"
    end
  end

  def update
    if @administrator.update(administrator_params)
      flash[:success] = "Administrator was successfully created."
      redirect_to [:adminboard, @administrator]
    else
      flash.now[:failure] = "Oops. Something went wrong."
      render action: "edit"
    end
  end

  def destroy
    @administrator.destroy
    flash[:success] = "Administrator was successfully destroyed."
    redirect_to adminboard_login_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator
      @administrator = current_administrator
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_params
      params.require(:administrator).permit(:email, :username, :password, :password_confirmation)
    end
end
