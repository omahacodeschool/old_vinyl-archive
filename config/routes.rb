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

  post "save_artist_image/:artist_id" => 'artist_images#create'
  get "artist_images/:artist_id/new"  => 'artist_images#new'

  post "albums/:id/create_album_image" => 'albums#create_album_image'
  get "albums/:id/new_album_image" => 'albums#new_album_image'
  get "albums/new"     => 'albums#new'
  post "albums/create" => 'albums#create'
  get "albums/:id/edit" => 'albums#edit'
  # Is there a reason why this is a 'put' request?
  put "albums/:id/update" => 'albums#update'
  delete "albums/:id/delete" => 'albums#delete'
  
  get "albums/index"  => 'albums#index'
  get "albums/:id"    => 'albums#show'

  post "artists/:id/create_location_and_image" => 'artists#create_location_and_image'
  get "artists/:id/new_location_and_image" => 'artists#new_location_and_image'
  post "artist/:id/create_members" => 'artists#create_members'
  get "artists/:id/new_members" => 'artists#new_members'
  
  get "artists/index" => 'artists#index'
  get "artists/:id"   => 'artists#show'

  get "areas/index"   => 'areas#index'
  get "areas/:id"     => 'areas#show'

  get "genres/index"  => 'genres#index'
  get "genres/:id"    => 'genres#show'

  get "formats/index" => 'formats#index'
  get "formats/:id"   => 'formats#show'

  get "decades/index" => 'decades#index'
  get "decades/:year" => 'decades#show'
end
