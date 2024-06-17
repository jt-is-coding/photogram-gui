Rails.application.routes.draw do

  get("/", { :controller => "user", :action => "index" })
  get("/users", { :controller => "user", :action => "index" })
  get("/users/:username", { :controller => "user", :action => "show" })
  post("/add_user", { :controller => "user", :action => "create" })
  # post("update_user/:username", { :controller => "user", :action => "update" })

  get("/photos", { :controller => "photo", :action => "index" })
  get("/photos/:photo_number", { :controller => "photo", :action => "show" })
  # post("update_photo/:photo_number", { :controller => "photo", :action => "update" })

end
