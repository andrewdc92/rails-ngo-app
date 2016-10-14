Rails.application.routes.draw do
  get '/donors', to: "donors#index", as: "donors"
  get '/donors/new', to: "donors#new", as: "new_donor"
  post '/donors', to: "donors#create"
  get '/donors/:id', to: "donors#show", as: "donor"
  get '/donors/:id/edit', to: "donors#edit", as: "edit_donor"
  patch '/donors/:id', to: "donors#update"
  delete '/donors/:id', to: "donors#destroy"

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
