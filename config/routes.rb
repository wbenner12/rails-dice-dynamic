Rails.application.routes.draw do
get("/dice/:number/:sides", { :controller => "game", :action => "play" })

get("/", { :controller => "game", :action => "home"})
end
