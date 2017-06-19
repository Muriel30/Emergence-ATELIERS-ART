class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        redirect_to @review, notice: 'Review was successfully created.'
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
      redirect_to @review, notice: 'Review was successfully updated.'

      else
      render :edit
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
    redirect_to reviews_url, notice: 'Review was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:name, :comment, :stars)
    end
end
