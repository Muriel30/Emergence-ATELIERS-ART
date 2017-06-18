class PoisController < ApplicationController
  #before_action :find_poi


  def index
    @pois = Poi.all
  end

  def show
     @poi = Poi.find(params[:id])
     @review = Review.new
  end

  def new
    @poi = Poi.new
  end

  def edit
  end

 def create
    @poi = Poi.new(poi_params)
    if @poi.save
      redirect_to poi_path(@poi)
    else
      flash[:alert] = "Erreur lors de la création"
      render :new
    end
  end


  def update
      if @poi.update(poi_params)
        redirect_to @poi, notice: 'L atelier a été mis à jour avec succès.'

      else
       render :edit

      end
    end

  def destroy
    @poi.destroy

    redirect_to pois_url, notice: 'Poi was successfully destroyed.'

  end

  private
    # Use callbacks to share common setup or constraints between actions.
 #def find_poi
    #@poi = Poi.find(params[:id])
  #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_params
      params.require(:poi).permit(:name, :address, :description, :openings, :stars, :category_id, :photo)
    end
end
