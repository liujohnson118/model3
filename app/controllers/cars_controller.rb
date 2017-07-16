class CarsController < ApplicationController

  # GET '/model3/new'
  # User must log in to customize order, otherwise redirect to login
  def new
    if session[:user_id] == nil
      redirect_to '/login'
    else
    end
  end

  # POST '/model3/new'
  # Upon successful validation of parameters, create car to Car db and redirect to /mycars
  def create
    my_params=car_params
    my_params[:user_id]=session[:user_id]
    my_params[:paid]=false
    Car.create(my_params)
    redirect_to '/mycars'
  end

  # GET '/cars/index'
  # If logged in, show all the cars customized by the user, otherwise redirect to login
  def index
    if session[:user_id] == nil
      redirect_to '/login'
    else
      @cars=Car.where(user_id: session[:user_id])
    end
  end

  # DELETE 'cars/:id'
  # Delete car by id as in params and redirect to /mycars
  def destroy
    @car_to_delete=Car.find(params[:id])
    @car_to_delete.destroy
    redirect_to '/mycars'
  end

   #Private methods
   private
    # Method to get car parameters for creation of a car and store in Car db
    # sd: self-driving
    # ap: autopilot
    # awd: all wheel drive
    def car_params
      params.require(:car).permit(:sd, :ap, :awd, :color, :battery,:wheel)
    end
end
