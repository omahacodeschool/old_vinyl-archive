class Format < ActiveRecord::Base
  has_many   :releases
  # belongs_to :release
  has_many   :albums, through: :releases

  # Return albums associated with the Format of a given Release
  # This can be achieved through ActiveRecord relations (needed?)
  # def with_these_albums
  #   album_id = Release.where({"format_id" => self.id})
  #   Album.where({"id" => album_id})
  # end
end
