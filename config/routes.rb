Rails.application.routes.draw do
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/movies", { :controller => "movies", :action => "index" })
  get("/actors", { :controller => "actors", :action => "index" })  
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })  
  get("/", { :controller => "application", :action => "homepage" })

end
