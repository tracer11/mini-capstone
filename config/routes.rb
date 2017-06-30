 Rails.application.routes.draw do
  get '/' => 'items#index'
  get '/items' => 'items#index'

  get 'items/new' => 'items#new'
  post '/items' => 'items#create'

  get '/items/:id' => 'items#show'

  get '/items/:id/edit' => 'items#edit'
  patch '/items/:id/' => 'items#update'

  delete '/items/:id' => 'items#destroy'

  get '/random' => 'items#random'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  post '/carted_products' => 'carted_products#create'
  get '/carted_products' => 'carted_products#index'
  delete '/carted_products/:id' => 'carted_products#destroy'
end
