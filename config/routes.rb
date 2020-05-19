Rails.application.routes.draw do
  root 'pages#home'
  # root "chat#show"

  get "/login",  to: "auth#new"
  post "/login", to: "auth#create"
end
