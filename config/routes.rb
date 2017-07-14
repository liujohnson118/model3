Rails.application.routes.draw do
  get 'home/index'

  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  get '/model3' => 'home#model3'
  get '/model3/new' => 'cars#new'
  post '/model3/new' => 'cars#create'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/allUsers' => 'users#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/mycars' => 'cars#index'
  delete '/cars/:id/' => 'cars#destroy'

  get '/pay/:id/' => 'charges#new'

end
