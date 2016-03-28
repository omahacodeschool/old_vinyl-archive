class Release < ActiveRecord::Base
  belongs_to :album
  has_many :formats

  # Finds count of releases associated with a given decade and returns a hash with decade keys and release count values
  def self.count_by_decade
    decade = Time.now.year - (Time.now.year % 10)
    decade_releases = {}

    while decade >= 1860 do
      decade_releases[decade] = self.where("release_date >= ? AND release_date <= ?", decade, (decade + 10)).count

      decade -= 10
    end
    decade_releases
  end
end
