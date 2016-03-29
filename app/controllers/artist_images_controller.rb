class ArtistImagesController < ApplicationController
  def new
    @artist = Artist.find_by_id(params[:artist_id])
  end
end