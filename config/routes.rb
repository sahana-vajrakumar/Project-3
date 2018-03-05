Rails.application.routes.draw do
  root to: 'homepages#home'
  resources :movies
  resources :shows

  get  '/searchmovies' => 'searchmovies#form'
  post '/searchmovies/lookup' => 'searchmovies#lookup'
end
