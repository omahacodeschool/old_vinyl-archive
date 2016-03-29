class Album < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  belongs_to :release
  has_many   :album_images
  has_many   :tracks

  def show_artist_name
    x = Album.find_by_artist_id(self.id)
    Artist.where({"id" => x}).name       #Shows "Artist" instead of name
  end

  # Return the AlbumImage object for this album
  def album_image
    AlbumImage.find_by_album_id(self.id)
  end
  # Retrieve tracks associated with a given album and return hash with track number keys and track title values
  # NOT YET WORKING
  def tracklist
    tracks = Track.where({"album_id" => self.id})
    tracklist = {}
    track_number = 1

    tracks.each do |track|
      tracklist[track_number] = track.title
      track_number += 1
    end
    tracklist
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
