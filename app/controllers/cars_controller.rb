class CarsController < ApplicationController
  def new
    if session[:user_id] == nil
      redirect_to '/login'
    else
    end
  end

  def create
    my_params=car_params
    my_params[:user_id]=session[:user_id]
    my_params[:paid]=false
    Car.create(my_params)
    redirect_to '/mycars'
  end

  def index
    if session[:user_id] == nil
      redirect_to '/login'
    else
      @cars=Car.where(user_id: session[:user_id])
    end
  end

  def destroy
    @car_to_delete=Car.find(params[:id])
    @car_to_delete.destroy
    redirect_to '/mycars'
  end

   private
    def car_params
      params.require(:car).permit(:sd, :ap, :awd, :color, :battery,:wheel)
    end
end
