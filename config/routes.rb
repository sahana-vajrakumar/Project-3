Rails.application.routes.draw do

  get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

  root to: 'homepages#home'
  resources :trendingmovies
  resources :shows
  resources :users
  resources :movies

  get  '/searchmovies' => 'searchmovies#form'
  post '/searchmovies/lookup' => 'searchmovies#lookup'
end
