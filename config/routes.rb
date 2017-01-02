Rails.application.routes.draw do
  # Routes for the Ownership resource:
  # CREATE
  get "/ownerships/new", :controller => "ownerships", :action => "new"
  post "/create_ownership", :controller => "ownerships", :action => "create"

  # READ
  get "/ownerships", :controller => "ownerships", :action => "index"
  get "/ownerships/:id", :controller => "ownerships", :action => "show"

  # UPDATE
  get "/ownerships/:id/edit", :controller => "ownerships", :action => "edit"
  post "/update_ownership/:id", :controller => "ownerships", :action => "update"

  # DELETE
  get "/delete_ownership/:id", :controller => "ownerships", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Business resource:
  # CREATE
  get "/businesses/new", :controller => "businesses", :action => "new"
  post "/create_business", :controller => "businesses", :action => "create"

  # READ
  get "/businesses", :controller => "businesses", :action => "index"
  get "/businesses/:id", :controller => "businesses", :action => "show"

  # UPDATE
  get "/businesses/:id/edit", :controller => "businesses", :action => "edit"
  post "/update_business/:id", :controller => "businesses", :action => "update"

  # DELETE
  get "/delete_business/:id", :controller => "businesses", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
