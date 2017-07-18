class OrderConfirmationMailer < ApplicationMailer
    default from: 'no-reply@tesla.com'
    def order_confirmation_email(email, car)
        @car = car
        mail(to: email, subject: 'Tesla Model3 order')
    end
end
