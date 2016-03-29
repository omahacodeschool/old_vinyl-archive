class Genre < ActiveRecord::Base
  has_many :albums

  # Return albums associated with a certain genre
  def with_these_albums
    Album.where({"genre_id" => self.id})
  end
end
