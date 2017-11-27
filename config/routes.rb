Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users
  resources :menus

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
