class ReviewsController < ApplicationController
  def new
  end
  def index
    if session[:user_id]
      @reviews=Review.where(user_id: session[:user_id])
    else
      redirect_to '/login'
    end
  end
  def create
    my_params=review_params
    my_params[:user_id]=session[:user_id]
    my_params[:car_id]=params[:car_id]
    Review.create!(my_params)
    Car.update(params[:car_id].to_i, reviewed:true)
    redirect_to '/mycars'
  end
  def destroy
    Review.where(car_id: params[:car_id]).first.destroy
    redirect_to '/myreviews'
  end
  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
