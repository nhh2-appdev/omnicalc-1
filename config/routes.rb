Rails.application.routes.draw do

# Define the /square/new URL
  get("/square/new", { :controller=> "application", :action => "blank_square_form"})

# Define the /square/results URL
  get("/square/results", { :controller=> "application", :action => "calculate_square"})

end
