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
end
