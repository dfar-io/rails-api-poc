Rails.application.routes.draw do
  get "/teacher", to: "teachers#index"
  post "/signup", to: "users#create"
  post "/login", to: "authentication#authenticate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
