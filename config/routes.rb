Rails.application.routes.draw do
  get '/all_items' => 'items#items'
end
