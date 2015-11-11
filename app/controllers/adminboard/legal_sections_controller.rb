class Adminboard::LegalSectionsController < AdminboardController
  before_action :set_legal_section, only: [:show, :edit, :update, :destroy]

  def index
    @legal_sections = LegalSection.all
  end

  def show
  end

  def new
    @legal_section = LegalSection.new
  end

  def edit
  end

  def create
    @legal_section = LegalSection.new(legal_section_params)

    if @legal_section.save
      flash[:success] = "Legal was successfully created."
      redirect_to [:adminboard, @legal_section]
    else
      flash.now[:failure] = "Oops. Something went wrong."
      render action: "new"
    end
  end

  def update
    if @legal_section.update(legal_section_params)
      flash[:success] = "Legal was successfully updated."
      redirect_to [:adminboard, @legal_section]
    else
      flash.now[:failure] = "Oops. Something went wrong."
      render action: "edit"
    end
  end

  def destroy
    @legal_section.destroy
    flash[:success] = "Legal was successfully destroyed."
    redirect_to adminboard_legal_sections_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legal_section
      @legal_section = LegalSection.find_by_slug!(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legal_section_params
      params.require(:legal_section).permit(:title, :active)
    end
end
