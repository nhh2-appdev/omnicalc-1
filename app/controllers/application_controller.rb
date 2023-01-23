class ApplicationController < ActionController::Base

# Defining the method "blank_square_form"
  def blank_square_form
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end

# Defining the method "calculate_square"
  def calculate_square
    render ({ :template => "calculation_templates/square_results.html.erb"})
  end

end
