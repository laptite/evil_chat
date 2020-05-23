Rails.application.routes.draw do
  devise_for :users
  root "chat#show"
end
