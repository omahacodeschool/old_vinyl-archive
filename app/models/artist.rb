class Artist < ActiveRecord::Base
  belongs_to :area
  has_many :members
  has_many :albums

  # Finds count of artists associated with a given decade and returns a hash with decade keys and artist count values
  def self.count_by_decade
    decade = Time.now.year - (Time.now.year % 10)
    decade_artists = {}

    while decade >= 1860 do
      decade_artists[decade] = self.where("start_year >= ? AND start_year <= ?", decade, (decade + 10)).count

      decade -= 10
    end
    decade_artists
  end
  
  # Lists all members for a particular band
  def show_artist_members
    x = self.id
    Member.where({"artist_id" => x})
  end

  # Shows album name(s) for a particular band
  def artist_album_names
    x = self.id
    Album.where({"artist_id" => x})
  end

  # Shows corresponding album covers
  def show_artist_album_covers
    x = Album.where({"artist_id" => self.id})
    AlbumImage.where({"album_id" => x})
  end

  # Lists all albums for a particular band
  def show_artist_albums
    x = self.id
    Album.where({"artist_id" => x})
  end

end

