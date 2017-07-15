class ChargesController < ApplicationController
  def new
    @car=Car.find(params[:id])
  end

  def create
    # Amount in cents
    @amount = Car.deposit
    @carID = params[:carID]
    puts "Amount in create #{@amount}"
    puts "Looking at car ID #{@carID}"

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

  rescue Stripe::CardError => e
    flash[:error] = e.message
    puts "Error occured #{new_charge_path}"
    redirect_to new_charge_path
  end

end
