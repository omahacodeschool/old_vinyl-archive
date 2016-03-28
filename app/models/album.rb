class Album < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  belongs_to :release

  # Return the AlbumImage object for this album.
  def album_image
    AlbumImage.find_by_album_id(self.id)
  end
end
