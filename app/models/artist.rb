class Artist < ActiveRecord::Base
  belongs_to :area
  has_many :members

  def show_artist_members
    x = self.id
    return Member.where({"artist_id" => x})
  end

  def show_artist_albums
    

  end
  
end
