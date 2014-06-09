class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(params.require(:rating).permit(:timing))
    @rating.save
    redirect_to root_path
  end
end
