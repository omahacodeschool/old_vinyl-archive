class Artist < ActiveRecord::Base
  belongs_to :area
  has_many :members
  has_many :albums

  # Lists all members for a particular band
  def show_artist_members
    x = self.id
    Member.where({"artist_id" => x})
  end

  # Shows all albums for a particular band
  def show_artist_albums
    x = self.id
    Album.where({"artist_id" => x})
  end

end

