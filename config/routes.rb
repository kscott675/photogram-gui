Rails.application.routes.draw do

  root to: redirect("/users/")
  
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/users/:username/edit", { :controller => "users", :action =>"update" })


  get("/photos", { :controller => "photos", :action => "index" })
  post("/photos/add", { :controller => "photos", :action => "post" })
  get("/photos/:photo_id", { :controller => "photos", :action => "show" })
  get("/photos/:photo_id/delete", { :controller => "photos", :action => "delete" })

  post("/add_comment", { :controller => "photos", :action => "add_comment" })
  post("/photos/update_photo", { :controller => "photos", :action => "update_photo" })

end
