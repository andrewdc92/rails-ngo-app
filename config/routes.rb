Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "ngos#index"

  get "/ngos", to: "ngos#index", as: "ngos"
  get "/ngos/:id", to: "ngos#show", as: "ngo"
  get "/ngos/new", to: "ngos#new", as: "new_ngo"
  post "/ngos", to: "ngo#create"

  get "/ngos/:id/edit", to: "ngos#edit", as: "edit_ngo"
  patch "/ngos/:id", to: "ngos#update"
  delete "/ngos/:id", to: "ngos#destroy"

end
