class Genre < ActiveRecord::Base
  has_many :albums

  # Return albums associated with a certain genre
  # Can be achieved with ActiveRecord relations (needed?)
  # def with_these_albums
  #   Album.where({"genre_id" => self.id})
  # end
end
