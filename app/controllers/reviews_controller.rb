class ReviewsController < ApplicationController

  # GET '/review/:car_id/new'
  def new
    if session[:user_id] != Car.find(params[:car_id]).user_id
      redirect_to '/login'
    end
  end

  # GET '/myreviews'
  def index
    if session[:user_id]
      @reviews=Review.where(user_id: session[:user_id])
    else
      redirect_to '/login'
    end
  end

  # POST '/review/:car_id/new'
  def create
    if session[:user_id]==nil
      redirect_to '/login'
    else
      my_params=review_params
      my_params[:user_id]=session[:user_id]
      my_params[:car_id]=params[:car_id]
      Review.create!(my_params)
      Car.update(params[:car_id].to_i, reviewed:true)
      redirect_to '/mycars'
    end
  end

  # DELETE '/review/:car_id/delete/'
  def destroy
    Review.where(car_id: params[:car_id]).first.destroy
    redirect_to '/myreviews'
  end
  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
