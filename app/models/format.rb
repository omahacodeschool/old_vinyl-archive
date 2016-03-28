class Format < ActiveRecord::Base
  belongs_to :release
  has_many :albums

  # Return a count of releases associated with a certain format
  def release_count
    Release.where({"format_id" => self.id}).count
  end
  # Return albums associated with the Format of a given Release
  def with_these_albums
    album_id = Release.where({"format_id" => self.id})
    Album.where({"id" => album_id})
  end
end
