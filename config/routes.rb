Rails.application.routes.draw do

  devise_for :users
  root 'pages#index'

  get 'home' => "pages#home"
  get '/users/:id' => "pages#profile"
  get 'explore' => "pages#explore"

  
end
