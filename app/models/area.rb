class Area < ActiveRecord::Base
  has_many :artists
  has_many :albums, through: :artists

  # Return albums associated with a given area
  def with_these_albums
    artist_ids = Artist.where({"area_id" => self.id})
    artist_ids.each do |artist|
      albums = Album.where({"artist_id" => artist})
    end
    albums
  end
end
