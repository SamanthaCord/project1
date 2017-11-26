Rails.application.routes.draw do
  get 'users/new'

  get 'pages/home'

  root :to => 'pages#home'
  resources :users
end
