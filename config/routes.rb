Rails.application.routes.draw do
  get("/rock", { :controller => "game", :action => "playrock" })
  get("/paper", { :controller => "game", :action => "playpaper" })
  get("/scissors", { :controller => "game", :action => "playscissors" })
  get("/", { :controller => "game", :action => "gohomepage" })
end
