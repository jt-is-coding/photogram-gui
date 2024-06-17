Rails.application.routes.draw do

  get("/", { :controller => "user", :action => "index" })
  get("/users", { :controller => "user", :action => "index" })
  get("/users/:username", { :controller => "user", :action => "show" })
  # post("update_user/:username", { :controller => "user", :action => "update" })

  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:photo_number", { :controller => "photos", :action => "show" })
  # post("update_photo/:photo_number", { :controller => "photos", :action => "update" })

end
