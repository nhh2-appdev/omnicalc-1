Rails.application.routes.draw do

# Define the /square/new URL
  get("/", { :controller=> "application", :action => "homepage"})

## Square
  # Define the /square/new URL
    get("/square/new", { :controller=> "application", :action => "blank_square_form"})

  # Define the /square/results URL
    get("/square/results", { :controller=> "application", :action => "calculate_square"})

## Square Root
  # Define the /square_root/new URL
    get("/square_root/new", { :controller=> "application", :action => "blank_square_root_form"})

  # Define the /square_root/results URL
    get("/square_root/results", { :controller=> "application", :action => "calculate_square_root"})

## Payment
  # Define the /payment/new URL
    get("/payment/new", { :controller=> "application", :action => "blank_payment_form"})

  # Define the /payment/results URL
    get("/payment/results", { :controller=> "application", :action => "calculate_payment"})

end
