class ArtistImagesController < ApplicationController
  def new
    @artist = Artist.find_by_id(params[:artist_id])
  end

  def create
    @artist = Artist.find_by_id(params[:artist_id])

    artist_image = ArtistImage.new
    artist_image.artist_id = @artist.id

    # (Carrierwave:)
    # 1. Save the image somewhere.
    # 2. Save the path to that image as this artist_image's 'image_1' value.

    artist_image.image_1 = params[:image_url]
    artist_image.save

    redirect_to("/albums/index")
  end
end