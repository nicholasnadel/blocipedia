Rails.application.routes.draw do
  resources :pages
  devise_for :users

  get 'home/index'
  get 'home/about'
  # get 'about' => 'home#about' causes routing errors

  root to: 'home#index'
end
