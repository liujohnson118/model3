class UsersController < ApplicationController

  # GET '/signup'
  def new
  end

  # POST '/signup'
  # If user email already exists redirect to '/signup' and flash error
  def create
    user = User.new(user_params)
    if User.where(email:user.email.downcase).count<1
      if (user.save)
        session[:user_id] = user.id
        redirect_to '/'
      else
        if user.errors[:email]
          flash[:signup_error] = 'Invalid email.'
        end
        if user.errors[:passport]
          flash[:signup_error] = 'Invalid passport number.'
        end
        redirect_to '/signup'
      end
    else
      flash[:signup_error]='User already exists.'
      redirect_to '/signup'
    end
  end

  # GET '/allUsers'
  # Show info for all users
  # Route to be removed before production
  def index
    @users=User.all
  end

  # Private methods
  private
    # Method for parameters for creating new user
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name,:passport,:dob)
    end
end
