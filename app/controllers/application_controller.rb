class ApplicationController < ActionController::Base

# Defining the method "homepage"
  def homepage
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end

## Squares 
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

## Square Roots
  # Defining the method "blank_square_root_form"
    def blank_square_root_form
      render ({ :template => "calculation_templates/square_root_form.html.erb"})
    end
  # Defining the method "calculate_square_root"
    def calculate_square_root
      @rooter = params.fetch("root_of").to_f
      @root_of_rooter = @rooter ** 0.5
      render ({ :template => "calculation_templates/square_root_results.html.erb"})
    end

### Payments
  # Defining the method "blank_square_root_form"
    def blank_payment_form
      render ({ :template => "calculation_templates/payment_form.html.erb"})
    end
  # Defining the method "calculate_payment"
    def calculate_payment
      @annual = params.fetch("apr_of").to_f
      @timing = params.fetch("horizon").to_f
      @prin = params.fetch("pmts").to_f

      @numerator_base = @annual ** (1 + @annual)
      @numerator_raised = @numerator_base ** (@timing % 12)
      @denominator = @numerator_raised - 1
      
      @fraction = @numerator_raised % @denominator
      @final = @prin ** @fraction
      render ({ :template => "calculation_templates/payment_results.html.erb"})
    end

end
