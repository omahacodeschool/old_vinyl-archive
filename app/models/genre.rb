class Genre < ActiveRecord::Base
  has_many :albums

  # Return a count of albums associated with a certain genre
  def album_count
    Album.where({"genre_id" => self.id}).count
  end

  # Return albums associated with a certain genre
  def with_these_albums
    Album.where({"genre_id" => self.id})
  end
end
