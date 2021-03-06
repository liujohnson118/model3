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
  get '/allUsers' => 'users#index' #Remove before submission, for debugging purposes only

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/mycars' => 'cars#index'
  delete '/cars/:id/' => 'cars#destroy'

  get '/pay/:id/' => 'charges#new'

  get '/myreviews' => 'reviews#index'
  get '/review/:car_id/new' => 'reviews#new'
  post '/review/:car_id/new' => 'reviews#create'
  delete '/review/:car_id/delete' => 'reviews#destroy'
  get '/allReviews' => 'home#allReviews'

  get '/consumption/:car_id/new' =>'consumptions#new'
  post '/consumption/:car_id/new' => 'consumptions#create'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
