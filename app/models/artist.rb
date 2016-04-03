class Artist < ActiveRecord::Base
  belongs_to :area
  has_many   :members
  has_many   :albums
  # has_many   :album_images
  has_many   :artist_images
  # has_many   :genres, through: :albums

  # Returns artist_images collection got a particular artist
  # I BELIEVE this can be achieved through ActiveRecord relations (needed?)
  def artist_images
    ArtistImage.find_by_artist_id(self.id)
  end

  # Returns all members for a particular band
  # This can be achieved through ActiveRecord relations (needed?)
  # def show_artist_members
  #   Member.where({"artist_id" => self.id})
  # end

  # Returns all albums for a particular band
  # This can be achieved through ActiveRecord relations (needed?)
  # def show_artist_albums
  #   Album.where({"artist_id" => self.id})
  # end
end