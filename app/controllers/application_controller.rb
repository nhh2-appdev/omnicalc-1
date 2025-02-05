class ApplicationController < ActionController::Base

  # Defining the method "homepage"
  def homepage
    render ({ :template => "calculation_templates/square_form.html.erb" })
  end

  ## Squares
  # Defining the method "blank_square_form"
  def blank_square_form
    render ({ :template => "calculation_templates/square_form.html.erb" })
  end

  # Defining the method "calculate_square"
  def calculate_square
    @num = params.fetch("square_of").to_f
    @square_of_num = @num ** 2
    render ({ :template => "calculation_templates/square_results.html.erb" })
  end

  ## Square Roots
  # Defining the method "blank_square_root_form"
  def blank_square_root_form
    render ({ :template => "calculation_templates/square_root_form.html.erb" })
  end

  # Defining the method "calculate_square_root"
  def calculate_square_root
    @rooter = params.fetch("root_of").to_f
    @root_of_rooter = @rooter ** 0.5
    render ({ :template => "calculation_templates/square_root_results.html.erb" })
  end

  ### Payments
  # Defining the method "blank_square_root_form"
  def blank_payment_form
    render ({ :template => "calculation_templates/payment_form.html.erb" })
  end

  # Defining the method "calculate_payment"
  def calculate_payment
    @annual = params.fetch("apr_of").to_f
    @monthly_rate = (@annual/100)/12
    @timing = params.fetch("horizon").to_i
    @num_mos = @timing * 12
    @prin = params.fetch("pmts").to_f

    @final = (@monthly_rate * @prin) / (1-(1+ @monthly_rate) ** ((-1) * @num_mos))
    #@final = @prin * (@monthly_rate * (1 + @monthly_rate) ** 360) / (((1 + @monthly_rate) ** 360) - 1)

    render ({ :template => "calculation_templates/payment_results.html.erb" })
  end

  #### Random
  # Defining the method "blank_random_form"
  def blank_random_form
    render ({ :template => "calculation_templates/random_form.html.erb" })
  end

  # Defining the method "calculate_random"
  def calculate_random
    @lower = params.fetch("min_of").to_f
    @upper = params.fetch("max_of").to_f
    @rand_output = rand(@lower.to_f..@upper.to_f)
    render ({ :template => "calculation_templates/random_results.html.erb" })
  end
end
