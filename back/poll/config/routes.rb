Rails.application.routes.draw do
  root to: 'home#index'
  resources :polls
  resources :users do
    get '/polls', to: "users#show"
  end
end
