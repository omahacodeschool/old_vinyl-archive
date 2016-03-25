class Area < ActiveRecord::Base
  belongs_to :artist

  # Return a count of artists associated with a given area
  def artist_count
    Artist.where({"area.id" => self.id})
  end
end
