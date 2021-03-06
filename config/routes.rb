Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users
  resources :menus
  resources :benefits

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/random' => 'pages#random'
  get '/weathersearch' => 'pages#weathersearch'
  get '/dashboard' => 'pages#dashboard'
end
