Rails.application.routes.draw do
  root 'pages#home'
  get 'muscles#create'
  resources :users 
  resources :requests
  resources :sessions, only: [:new, :create]
  delete "/logout" => "sessions#destroy", as: :logout
 
end
