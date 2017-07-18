class ConsumptionsController < ApplicationController

  # GET '/consumption/:car_id/new'
  def new
    if session[:user_id] != Car.find(params[:car_id]).user_id
      redirect_to '/login'
    end
  end

   # POST '/consumption/:car_id/new'
  def create
    my_params=consumption_params
    puts "User entered for consumption #{my_params[:range].to_f}"
    if (my_params[:range].to_f<=0 || my_params[:range].to_f>60)
      redirect_to '/consumption/'+params[:car_id].to_s+'/new'
      flash[:invalidConsumption]='Impossible consumption!'
    else
      my_params[:car_id]=params[:car_id]
      battery=Car.find(params[:car_id]).battery
      my_params[:battery]=battery
      range=battery/my_params[:range].to_f*100
      my_params[:range]=range
      Consumption.create!(my_params)
      redirect_to '/allReviews'
    end
  end

  private
  def consumption_params
    params.require(:consumption).permit(:range)
  end
end
