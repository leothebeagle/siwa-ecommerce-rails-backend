Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/users', to: 'users#create'
  delete '/logout', to: 'sessions#logout'
  post '/login', to: 'sessions#create'
  get '/items', to: 'items#index'
  
  post '/carts', to: 'carts#add_item_to_cart'
  
  # /magazines/:magazine_id/ads/:id
  # ads#show
  # displays a specific ad belonging to a specific magazine.
  # We can replicate this with a cart that belongs to a user
end

