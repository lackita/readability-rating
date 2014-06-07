class RatingsController < ApplicationController
  def new
    @rating = Ratings.new
  end
end
