Rails.application.routes.draw do
  get("/", { :controller => "game", :action =>"homepage"})

  get("/square/new", { :controller => "game", :action =>"square"})

  get("/square/results", { :controller => "game", :action =>"square_results"})

  get("/square_root/new", { :controller => "game", :action =>"square_root"})

  get("/square_root/results", { :controller => "game", :action =>"square_root_results"})


  get("/payment/new", { :controller => "game", :action =>"payment"})

  get("/payment/results", { :controller => "game", :action =>"payment_results"})

  get("/random/new", { :controller => "game", :action =>"random"})

  get("/random/results", { :controller => "game", :action =>"random_results"})




end
