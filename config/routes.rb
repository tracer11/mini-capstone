Rails.application.routes.draw do
  get '/' => 'items#index'
  get '/items' => 'items#index'
  get 'items/new' => 'items#new'
  post '/items' => 'items#create'
  get '/items/:id' => 'items#show'
end
