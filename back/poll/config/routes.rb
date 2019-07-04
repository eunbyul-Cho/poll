Rails.application.routes.draw do
  root to: 'home#index'
  resources :polls do
    resources :candidates,controller: "polls/candidate", as: :vote
  end
  resources :users do
    get '/polls', to: "users#show"
  end
end

