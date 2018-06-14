Rails.application.routes.draw do
  root 'pages#home'
  resources :users 
  resources :requests
  resources :sessions, only: [:new, :create, :edit]
  delete "/logout" => "sessions#destroy", as: :logout
  get "pages/saftey_trust" => "pages#saftey_trust", as: "trust"
  get "pages/join_us" => "pages#join_us", as: "join"
  get "pages/b2b" => "pages#b2b", as: "b2b"
  get "pages/insurance" => "pages#insurance", as: "insurance"
  get "pages/about_us" => "pages#about_us", as: "about_us"
  get "pages/contact_us" => "pages#contact_us", as: "contact"

end




