Rails.application.routes.draw do
  get 'maps/go'

  resources :users
  root to: 'visitors#index'
  post '/liftoff'	=> 'maps#save', :as => :go_save
  get '/go'	=> 'maps#go', :as => :go
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
