class PoisController < ApplicationController
  before_action :find_poi, only: [:show, :edit, :update, :destroy]


  def index
    @pois = Poi.all
  end

  def show
  end

  def new
    @poi = Poi.new
  end

  def edit
  end


  def create
    @poi = Poi.new(poi_params)

    respond_to do |format|
      if @poi.save
        redirect_to @poi, notice: 'L atelier a été correctement crée.'

      else
        render :new

      end
    end
  end

  #
  def update
    respond_to do |format|
      if @poi.update(poi_params)
        redirect_to @poi, notice: 'L atelier a été mis à jour avec succès.'

      else
       render :edit

      end
    end
  end

  def destroy
    @poi.destroy
    respond_to do |format|
      format.html { redirect_to pois_url, notice: 'Poi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_poi
      @poi = Poi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_params
      params.require(:poi).permit(:name, :address, :description, :openings, :stars, :category_id, :photo)
    end
end
