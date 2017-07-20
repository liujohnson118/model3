class CarsController < ApplicationController

  # GET '/model3/new'
  # User must log in to customize order, otherwise redirect to login
  def new
    if session[:user_id] == nil
      redirect_to '/login'
    else
      car_price_info=Price.where(name: '3').first
      @awd_price=car_price_info.awd_price
      @sd_price=car_price_info.sd_price
      @ap_price=car_price_info.ap_price
      @battery_70_price=car_price_info.battery_70_price
      @battery_80_price=car_price_info.battery_80_price
      @wheel_18_price=car_price_info.wheel_18_price
      @wheel_19_price=car_price_info.wheel_19_price
    end
  end

  # POST '/model3/new'
  # Calculate car price and add to parameters of car based on options
  # Upon successful validation of parameters, create car to Car db and redirect to /mycars
  def create
    my_params=car_params
    my_params[:user_id]=session[:user_id]
    my_params[:paid]=false
    my_params[:reviewed]=false
    my_params[:delivered]=false
    my_params[:vin]='wait'
    car_price_info=Price.where(name: '3').first
    price = car_price_info.base_price
    puts "Starting at #{price}"
    if my_params[:awd].to_i==1
      price += car_price_info.awd_price
      puts "AWD #{price}"
    end
    if my_params[:ap].to_i==1
      price += car_price_info.ap_price
      puts "AP #{price}"
    end
    if my_params[:sd].to_i==1
      price += car_price_info.sd_price
      puts "SD #{price}"
    end
    if my_params[:battery].to_i==70
      price += car_price_info.battery_70_price
      puts "70 #{price}"
    end
    if my_params[:battery].to_i==80
      price += car_price_info.battery_80_price
      puts "80 #{price}"
    end
    if my_params[:wheel].to_i==18
      price += car_price_info.wheel_18_price
    end
    if my_params[:wheel].to_i==19
      price += car_price_info.wheel_19_price
    end
    my_params[:price]=price
    Car.create(my_params)
    redirect_to '/mycars'
  end

  # GET '/cars/index'
  # If logged in, show all the cars customized by the user, otherwise redirect to login
  def index
    if session[:user_id] == nil
      redirect_to '/login'
    else
      @cars=Car.where(user_id: session[:user_id]).order('created_at DESC')
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
