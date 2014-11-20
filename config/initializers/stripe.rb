Stripe.api_key = "sk_0DUOqVSk6hfzRs29rS0MF1lc8n4h6"
STRIPE_PUBLIC_KEY = "pk_0DUOXU6bGnHcE9pdeAVcWzEUBgrmj"

#need to add the keys to the git ignore file so it's
#not accessible publicly

#not sure that this is where this stuff goes

#code I'm adding


#code from Stripe

Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

# Set your secret key: remember to change this to your live secret key in production
# See your keys here https://dashboard.stripe.com/account
# Stripe.api_key = "sk_0DUOqVSk6hfzRs29rS0MF1lc8n4h6"

# # Get the credit card details submitted by the form
# token = params[:stripeToken]

# # Create a Customer
# customer = Stripe::Customer.create(
#   :card => token,
#   :description => "payinguser@example.com"
# )

# # Charge the Customer instead of the card
# Stripe::Charge.create(
#     :amount => 1000, # incents
#     :currency => "usd",
#     :customer => customer.id
# )

# # Save the customer ID in your database so you can use it later
# save_stripe_customer_id(user, customer.id)

# # Later...
# customer_id = get_stripe_customer_id(user)

# Stripe::Charge.create(
#   :amount   => 1500, # $15.00 this time
#   :currency => "usd",
#   :customer => customer_id
# )