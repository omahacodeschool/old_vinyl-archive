class Album < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  belongs_to :release

  def show_artist_name
    x = Album.find_by_artist_id(self.id)
    Artist.where({"id" => x}).name       #Shows "Artist" instead of name
  end

  # Return the AlbumImage object for this album
  def album_image
    AlbumImage.find_by_album_id(self.id)
  end

  # Shows all tracks for album
  def show_album_tracks
    x = self.id
    Track.where({"album_id" => x})
  end

  def show_release_date
    Release.find_by_id(self.id).release_date
  end

  def show_album_area
    # Album --> Artist --> Area
  end

  def show_album_genre
    Album.find_by_id(self.id).genre_id #Need genre name to show
  end

  def show_album_label
    Release.find_by_id(self.id).label
  end

  def show_album_format
    Release.find_by_id(self.id).format_id #Need format name to show
  end

end
