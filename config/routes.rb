Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # For a get request with a '/songs' URI, route to the index method in the
  # Songs controller
  # get '/songs', to: 'songs#index'

  root 'welcome#index'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  # Or...
  # This makes all the standard routs available for Songs
  # Run 'rake routs' from terminal to make them
  resources :songs

  # Or use only: to create a list of the actions you want to set up
  resources :users, only: [:show, :new, :create]
  resources :songs, only: [:index]
  resources :artists, only: [:new, :create]

  namespace :admin do
    resources :categories, only: [:index]
  end
end
