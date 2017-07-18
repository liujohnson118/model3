class ChargesController < ApplicationController

  # GET '/pay/:id'
  # id is id of car
  def new
    @car=Car.find(params[:id])
  end

  # Auto generated for creating a charge
  # Added functionality to set paid property to true if transaction goes through without error
  def create
    # Amount in cents
    @amount = Car.deposit
    # ID of car
    @carID = params[:carID]

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Tesla Model 3 Custom Order',
      :currency    => 'usd'
    )

    Car.update(@carID.to_i, paid: true)
    OrderConfirmationMailer.order_confirmation_email(User.find(session[:user_id]).email, Car.find(@carID)).deliver_now

  rescue Stripe::CardError => e
    flash[:error] = e.message
    puts "Error occured #{new_charge_path}"
    redirect_to new_charge_path
  end

end
