class Artist < ActiveRecord::Base
  belongs_to :area
  has_many :members

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
  
  def show_artist_members
    x = self.id
    return Member.where({"artist_id" => x})
  end

  def show_artist_albums
    

  end
  
end
