class Genre < ActiveRecord::Base
  has_many :albums

  # Return a count of albums associated with a certain genre
  def album_count
    Album.where({"genre.id" => self.id})
  end
end
