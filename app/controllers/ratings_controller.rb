class RatingsController < ApplicationController
  def new
    @code_sample = CodeSample.find(params[:code_sample_id])
    @rating = Rating.new(code_sample: @code_sample)
    @tab = "rate"
  end

  def create
    rating_params = params.require(:rating).permit(:timing, :score)
    rating_params[:code_sample_id] = params[:code_sample_id]
    @rating = Rating.new(rating_params)
    @rating.save
    redirect_to code_sample_path params[:code_sample_id]
  end
end
