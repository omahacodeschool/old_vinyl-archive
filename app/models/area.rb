class Area < ActiveRecord::Base
  belongs_to :artist

  # Return a count of albums associated with a given area
  def album_count
    artist_id = Artist.where({"area_id" => self.id})
    Album.where({"id" => artist_id}).count
  end

  # Return albums associated with a given area
  def with_these_albums
    artist_id = Artist.where({"area_id" => self.id})
    Album.where({"id" => artist_id})
  end
end
