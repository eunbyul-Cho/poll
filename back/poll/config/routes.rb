Rails.application.routes.draw do
  resources :votes
  resources :users do
    get '/votes', to: "users#show"
  end
end
