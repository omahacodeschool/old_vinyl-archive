class Format < ActiveRecord::Base
  belongs_to :release
  has_many   :albums

  # Return albums associated with the Format of a given Release
  def with_these_albums
    album_id = Release.where({"format_id" => self.id})
    Album.where({"id" => album_id})
  end
end
