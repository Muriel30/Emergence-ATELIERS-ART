class StudiosController < InheritedResources::Base
def index
    @studios = Studio.all
  end

  def show
     @studio = Studio.find(params[:id])
     @review = Review.new
  end

  def new
    @studio = Studio.new
  end

  def edit
  end

 def create
    @studio = Studio.new(studio_params)
    if @studio.save
      redirect_to studio_path(@studio)
    else
      flash[:alert] = "Erreur lors de la création"
      render :new
    end
  end

  def update
      if @studio.update(studio_params)
        redirect_to @poi, notice: 'L atelier a été mis à jour avec succès.'

      else
       render :edit

      end
    end

  def destroy
    @studio.destroy

    redirect_to studios_url, notice: 'La fiche atelier a été correctement supprimée.'

  end
  private

    def studio_params
      params.require(:studio).permit(:name, :address, :description, :openings, :stars)
    end
end

