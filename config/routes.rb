Rails.application.routes.draw do
  namespace :admin do
    resources :artists
    resources :artist_images
    resources :members
    resources :roles

    resources :albums
    resources :album_images
    resources :releases
    resources :tracks
    resources :users
    
    resources :areas
    resources :formats
    resources :genres
    resources :instruments

    root to: "users#index"
  end

  devise_for :users
  root to: "home#index"

  get "albums/index" => 'albums#index'
  get "albums/:id" => 'albums#show'

  get "artists/index" => 'artists#index'
  get "artists/:id" => 'artists#show'

  get "areas/index" => 'areas#index'
end
