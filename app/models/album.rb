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

  def tracks
    Track.where({"album_id" => self.id})
  end
end
