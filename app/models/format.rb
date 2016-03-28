class Format < ActiveRecord::Base
  belongs_to :release
  has_many :albums

  # Return a count of albums associated with a certain format
  def album_count
    release_id = Release.where({"format_id" => self.id})
    Album.where({"id" => release_id}).count
  end
  # Return albums associated with the Format of a given Release
  def with_these_albums
    album_id = Release.where({"format_id" => self.id})
    Album.where({"id" => album_id})
  end
end
