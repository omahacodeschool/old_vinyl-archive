class ArtistsController < ApplicationController
  def show
    @artist        = Artist.find_by_id(params[:id])
    # @artist_images = ArtistImage.where({"artist_id" => params[:id]})
    # @members       = Member.where({"artist_id" => params[:id]})
    # @artist_albums = Album.where({"artist_id" => params[:id]})
    @areas         = Area.all
    @albums        = Album.all
    @genres        = Genre.all
    @releases      = Release.all
    @formats       = Format.all
  end

  def index
    @genres   = Genre.all
    @artists  = Artist.all
    @albums   = Album.all
    @releases = Release.all
    @areas    = Area.all
    @formats  = Format.all
  end

  def new_members
    # REMOVE THESE ONCE SIDEBAR INFO IS EXCLUDED FROM THIS PAGE
    @albums   = Album.all
    @artists  = Artist.all
    @areas    = Area.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all

    @artist = Artist.find_by_id(params[:id])
    @instruments = Instrument.all
  end

  def create_members
    @member = Member.new
    @member.first_name = (params[:first_name])
    @member.last_name = (params[:last_name])
    @member.role.instrument_id = (params[:instrument_id])
    @member.save

    redirect_to("/artists/#{@artist.id}/new_location_and_image")

  end

  def new_location_and_image
    # REMOVE THESE ONCE SIDEBAR INFO IS EXCLUDED FROM THIS PAGE
    @albums   = Album.all
    @artists  = Artist.all
    @areas    = Area.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all

    @areas = Area.all
    @artist = Artist.find_by_id(params[:id])
  end

  def create_location_and_image

    @area = Area.find_by_id(params[:id])
    @area.save

    @artist = Artist.find_by_id(params[:id])
    artist_image = ArtistImage.new
    artist_image.artist_id = @artist.id
    artist_image.image_1 = params[:image_url]
    artist_image.save

    redirect_to("/albums/#{@album.id}/new_album_image")
  end
end