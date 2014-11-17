Rails.application.routes.draw do
  resources :pages
  devise_for :users

  get 'home/index'
  get 'home/about'
  # get 'about' => 'home#about' causes routing errors
  get 'pages/path'
  get 'pages/path'

  root to: 'home#index'
end

