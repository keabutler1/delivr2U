Rails.application.routes.draw do
  root 'pages#home'
  resources :users 
  resources :requests
  resources :sessions, only: [:new, :create, :edit]
  delete "/logout" => "sessions#destroy", as: :logout
 
end

