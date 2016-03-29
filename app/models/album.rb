class Album < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  belongs_to :release
  has_many   :album_images
  has_many   :tracks

  # Return the AlbumImage object for this album.
  def album_image
    AlbumImage.find_by_album_id(self.id)
  end
  # Retrieve tracks associated with a given album and return hash with track number keys and track title values
  # NOT YET WORKING
  def self.tracks
    album_tracks = Track.where({"album_id" => self.id})
    tracklist = {}
    track_number = 1

  def show_album_tracks
    x = self.id
    Track.where({"album_id" => x})
  end

  def show_album_format
    x = self.id
    Format.where({"album_id" => x})
  end

    while track_number <= album_tracks.count
     tracklist[track_number] = album_tracks.title
     track_number += 1
    end
    tracklist
  end

end
