Rails.application.routes.draw do
  root to: 'home#index'
  resources :polls
    put 'polls/:id', to: 'polls#update', as: :vote
  resources :users do
    get '/polls', to: "users#show"
  end
end
