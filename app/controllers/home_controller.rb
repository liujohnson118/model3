class HomeController < ApplicationController

  # Method to render the home page
  # GET '/'
  def index
  end

  def allReviews
    @reviews=Review.all
  end
end
