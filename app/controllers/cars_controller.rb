class CarsController < ApplicationController
  def new
    if session[:user_id] == nil
      redirect_to '/login'
    else
    end
  end

  def create
  end
end
