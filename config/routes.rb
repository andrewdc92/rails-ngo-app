Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "ngos#index"

  get "/ngos", to: "ngos#index", as: "ngos"

end
