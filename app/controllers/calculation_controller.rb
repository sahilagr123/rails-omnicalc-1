class CalculationController < ApplicationController
  def home 
    render({ :template => "templates/home"})
  end

  def square_new
    render({ :template => "templates/square_new"})
  end 

  def square_calc
    @num = params["number"].to_f
    @square = @num * @num

    render({ :template => "templates/square_calc"})
  end

  def square_root_new
    render({ :template => "templates/square_root_new"})
  end 

  def square_root_calc
    @num = params["user_number"].to_f
    @root = Math.sqrt(@num)

    render({ :template => "templates/square_root_calc"})
  end

  def payment_new
    render({ :template => "templates/payment_new"})
  end 

  def payment_calc

    @apr = params["user_apr"].to_f
    @years = params["user_years"].to_f
    @pv = params["user_pv"].to_f

    n = -1 * 12* @years
    apr = @apr/1200
    denom = (1 + apr)**n
    denominator = 1 - denom

    @payment = (apr * @pv)/denominator

    render({ :template => "templates/payment_calc"})
  end 

  def random_new
    render({ :template => "templates/random_new"})
  end 

  def random_calc
    @user_min = params["user_min"].to_f
    @user_max = params["user_max"].to_f

    @random_num = rand(@user_min..@user_max)

    render({ :template => "templates/random_calc"})
  end
end
