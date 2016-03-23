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

    root to: "users#index"
  end

  devise_for :users
  root to: "home#index"

  get "albums/:id" => 'album#show'
  get "albums/index" => "album#show_all"
end
