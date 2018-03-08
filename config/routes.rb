Rails.application.routes.draw do

  get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

  root to: 'trendingmovies#index'
  resources :trendingmovies
  resources :trendingshows
  resources :users
  resources :movies
  resources :viewedmovies

  get  '/searchmovies' => 'searchmovies#form'
  post '/searchmovies/lookup' => 'searchmovies#lookup'
end
