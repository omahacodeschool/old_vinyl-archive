class Artist < ActiveRecord::Base
  belongs_to :area
  has_many   :members
  has_many   :albums
  has_many   :artist_images

  # Lists all members for a particular band
  def show_artist_members
    Member.where({"artist_id" => self.id})
  end

  # Shows all albums for a particular band
  def show_artist_albums
    Album.where({"artist_id" => self.id})
  end
end