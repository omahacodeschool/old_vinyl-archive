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

  get "albums/:id" => 'album#show'
  get "albums/index" => "album#show_all"
end
