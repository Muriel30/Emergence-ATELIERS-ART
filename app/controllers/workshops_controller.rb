class WorkshopsController < InheritedResources::Base
before_action :find_workshop, except: [:index]


  def index
    @workshops = Workshop.all
  end

  def show
     @workshop = Workshop.find(params[:id])
     @review = Review.new
  end

  def new
    @workshop = Workshop.new
  end

  def edit
  end

 def create
    @workshop = Workshop.new(workshop_params)
    if @workshop.save
      redirect_to workshop_path(@workshop)
    else
      flash[:alert] = "Erreur lors de la création"
      render :new
    end
  end


  def update
      if @workshop.update(workshop_params)
        redirect_to @workshop, notice: 'L atelier a été mis à jour avec succès.'

      else
       render :edit

      end
    end

  def destroy
    @workshop.destroy

    redirect_to workshops_url, notice: 'Workshop was successfully destroyed.'

  end

  private

 def find_workshop
    @workshop = Workshop.find(params[:id])
  end


  private

    def workshop_params
      params.require(:workshop).permit(:name, :address, :description, :openings, :stars, :category_id, :photo)
    end
end

