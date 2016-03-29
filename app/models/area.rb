class Area < ActiveRecord::Base
  belongs_to :artist

  # Return albums associated with a given area
  def with_these_albums
    artist_id = Artist.where({"area_id" => self.id})
    Album.where({"id" => artist_id})
  end
end
