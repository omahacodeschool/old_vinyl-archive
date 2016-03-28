class Artist < ActiveRecord::Base
  belongs_to :area
  has_many :members

  # Prints decade and count of artists associated with that decade
  def self.count_by_decade
    decade = Time.now.year - (Time.now.year % 10)

    self.where("start_year >= ? AND start_year <= ?", decade, (decade + 10)).count
  end
end
