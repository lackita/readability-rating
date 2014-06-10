class RatingsController < ApplicationController
  def new
    @code_sample = CodeSample.find(params[:code_sample_id])
    @rating = Rating.new(code_sample: @code_sample)
  end

  def create
    rating_params = params.require(:rating).permit(:timing)
    rating_params[:code_sample_id] = params[:code_sample_id]
    @rating = Rating.new(rating_params)
    @rating.save
    redirect_to root_path
  end
end
