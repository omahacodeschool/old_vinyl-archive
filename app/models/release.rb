class Release < ActiveRecord::Base
  belongs_to :album
  has_many   :formats

  # Returns the current decade
  # Probably not going to be used (needed?)
  # def self.current_decade
  #   Time.current.year - (Time.current.year % 10)
  # end

  # Finds releases associated with a given decade and returns a hash with decade keys and Release collection values
  def self.by_decade
    decade = Time.current.year - (Time.current.year % 10)
    decade_releases = {}

    while decade >= 1860 do
      decade_releases[decade] = self.where("release_date >= ? AND release_date < ?", decade, (decade + 10))

      decade -= 10
    end
    decade_releases    
  end

  # Returns Album objects associated with a given Release
  # Unused. Same result achieved through ActiveRecord ralation
  # def album_info
  #   Album.find_by_id(self.album_id)
  # end
end
