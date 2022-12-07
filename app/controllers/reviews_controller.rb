class ReviewsController < ApplicationController
    before_action :set_project
    before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET projects/1/reviews
  def index
   @review = Review.where(project_id: @project.id)
  end

  # GET projects/1/reviews/1
  def show
  end

  # GET projects/1/reviews/new
  def new
    @review = Review.new
    @review.project_id = @project.id
  end

  # GET projects/1/reviews/1/edit
  def edit
  end

  # POST projects/1/reviews
  def create
   @review = Review.new(task_params)
    @review.project_id = @project.id
    if @review.save
      redirect_to([@review.project])
    else
      render action: 'new'
    end
  end

  # PATCH projects/1/reviews/1
  def update
    @reviews.project_id = @project.id
    @reviews.update(task_params)
    redirect_to([@reviews.project])
    
   
  end

  # DELETE projects/1/reviews/1
  def destroy
    @review.destroy
    redirect_to([@review.project])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:name, :description)
    end
end
end
