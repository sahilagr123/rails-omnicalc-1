Rails.application.routes.draw do

  get("/", { :controller => "calculation", :action => "home"})

  get("/square/new", { :controller => "calculation", :action => "square_new"})

  get("/square/results", { :controller => "calculation", :action => "square_calc"})

  get("/square_root/new", { :controller => "calculation", :action => "square_root_new"})

  get("/square_root/results", { :controller => "calculation", :action => "square_root_calc"})

  get("/payment/new", { :controller => "calculation", :action => "payment_new"})

  get("/payment/results", { :controller => "calculation", :action => "payment_calc"})

  get("/random/new", { :controller => "calculation", :action => "random_new"})

  get("/random/results", { :controller => "calculation", :action => "random_calc"})
  
  '''
  home page "/"
  Square form "/square/new"
  Square root form "/square_root/new"
  Payment with form "/payment/new"
  Random with form "/random/new"

  Square Results "/square/results" ?number=3
  Square Root Results "/square_root/results" ?user_number=4
  Payment Results "/payment/results" ?user_apr=2&user_years=3&user_pv=10000
  Random Results "/random/results" ?user_min=1&user_max=8
  '''

end
