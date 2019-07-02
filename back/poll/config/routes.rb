Rails.application.routes.draw do
  resources :polls
  resources :users do
    get '/polls', to: "users#show"
  end
end
