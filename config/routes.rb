Rails.application.routes.draw do

  devise_for :users
  resources :users do
  	member do
  		get :following, :followers
  	end
  end
  root 'pages#index'

  get 'home' => "pages#home"
  get '/user/:id' => "pages#profile"
  get 'explore' => "pages#explore"

  resources :posts

  
end
