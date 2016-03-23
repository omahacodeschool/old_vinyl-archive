class Album < ActiveRecord::Base

  def self.dropdown_values
    Album.select([:id, :title]).collect {|n| [n.title, n.id] }.to_h
  end

  # Return the AlbumImage object for this album.
  def album_image
    AlbumImage.find_by_album_id(self.id)
  end
  
end
