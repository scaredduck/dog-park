Rails.application.routes.draw do

  root to: 'pages#main'

  post "/parks/:id/add_dog", to: 'parks#add_dog'

  resources :parks

  delete '/dogs/:dog_id/:park_id/', to: 'dogs#remove_dog'

  resources :dogs

  get '/profile', to: 'users#show'
  get '/signup', to: 'users#new'

  get '/parks/:id/new_dog', to: 'parks#new_dog'

  post '/users', to: 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
