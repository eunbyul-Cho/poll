Rails.application.routes.draw do
  root to: 'home#index'
  resources :polls
    put 'vote/:id', to: 'polls#update', as: :complete_tasks
  resources :users do
    get '/polls', to: "users#show"
  end
end
