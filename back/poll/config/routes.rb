Rails.application.routes.draw do
  root to: 'home#index'
  resources :polls do
    resources :candidates, to: 'polls/candidates#update', as: :vote
  end
  resources :users do
    get '/polls', to: "users#show"
  end
end
