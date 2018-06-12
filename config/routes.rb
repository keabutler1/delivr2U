Rails.application.routes.draw do
  root 'pages#home'
  resources :users 
  resources :requests
  resources :sessions, only: [:new, :create]
  resources :muscles
  delete "/logout" => "sessions#destroy", as: :logout
 
end

