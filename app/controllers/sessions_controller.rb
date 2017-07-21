class SessionsController < ApplicationController

  # GET '/login'
  def new
  end

  # POST '/login'
  # If authentication with email and password passes, redirect to '/', else redirect to /login
  def create
    puts "Login using email #{params[:session][:email]}"
    puts "Login using password #{params[:session][:password]}"
    user = User.authenticate_with_credentials(params[:session][:email], params[:session][:password])
    # If the user exists AND the password entered is correct.
    if user
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      puts "Session user_id is set to #{session[:user_id]}"
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
      flash[:login_error]='User authentication failed. Please make sure your email and password are correct.'
    end
  end

  # GET '/logout'
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end