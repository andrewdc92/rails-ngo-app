Rails.application.routes.draw do
  root to: "site#index", as: "root_path"
  get '/donate', to: 'site#show'
  get '/contributors', to: 'site#contributors', as: "contributors"
  get '/login', to: 'sessions#new', as: "login"
  post '/sessions', to: 'sessions#create', as: "sessions"
  get '/logout', to: 'sessions#destroy'

  get '/donors', to: "donors#index", as: "donors"
  get '/donors/new', to: 'donors#new', as: 'new_donor'
  get '/donors/:id', to: "donors#show", as: "donor"
  post '/donors', to: "donors#create"
  get '/donors/:id/edit', to: "donors#edit", as: "edit_donor"
  patch '/donors/:id', to: "donors#update"
  delete '/donors/:id', to: "donors#destroy", as: "destroy_donor"

  get "/ngos", to: "ngos#index", as: "ngos"
  get "/ngos/:id", to: "ngos#show", as: "ngo"
  get "/ngos/new", to: "ngos#new", as: "new_ngo"
  post "/ngos", to: "ngo#create"

  get "/ngos/:id/edit", to: "ngos#edit", as: "edit_ngo"
  patch "/ngos/:id", to: "ngos#update"
  delete "/ngos/:id", to: "ngos#destroy"

  get "/ngos/:ngo_id/donors", to: "ngo_donors#index", as: "ngo_donors"
  post "/ngos/:ngo_id/donors", to: "ngo_donors#create", as: "donor_ngos"

end
