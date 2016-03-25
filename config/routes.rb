Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :albums
    resources :members
    resources :artists
    resources :artist_images
    resources :areas
    resources :releases
    resources :album_images
    resources :tracks
    resources :formats
    resources :genres
    resources :instruments
    resources :roles

    root to: "users#index"
  end

  devise_for :users
  root to: "home#index"

  get "albums/index" => 'albums#index'
  get "albums/:id" => 'albums#show'
end
