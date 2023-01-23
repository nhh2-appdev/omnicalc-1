class ApplicationController < ActionController::Base

# Defining the method "homepage"
  def homepage
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end

# Defining the method "blank_square_form"
  def blank_square_form
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end


# Defining the method "calculate_square"
  def calculate_square
    
    @num = params.fetch("square_of").to_f
    @square_of_num = @num ** 2

    render ({ :template => "calculation_templates/square_results.html.erb"})
  end

# Defining the method "blank_square_root_form"
  def blank_square_root_form
    render ({ :template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root

    @rooter = params.fetch("root_of").to_f
    @root_of_rooter = @rooter ** 0.5

    render ({ :template => "calculation_templates/square_root_results.html.erb"})
  end


end
