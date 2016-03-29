class Album < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  has_many   :releases
  has_many   :album_images
  has_many   :tracks
  has_one    :area, through: :artist
  has_many   :formats, through: :release

  # Return the AlbumImage object for this album.
  def album_image
    AlbumImage.find_by_album_id(self.id)
  end

  # Retrieve tracks associated with a given album and return hash with track number keys and track title values
  def tracklist
    tracks = Track.where({"album_id" => self.id})
    tracklist = {}
    track_number = 1

    tracks.each do |track|
      tracklist[track_number] = track.title
      track_number += 1
    end
    tracklist
  end

  def show_release_date
    Release.find_by_id(self.id).release_date
  end

  def show_album_label
    Release.find_by_id(self.id).label
  end

  # def show_album_format
  #   x = self.release
  #   y = Release.find_by_id(x).format_id
  #   z = Format.find_by_id(y)
  # end

  # def show_album_format
  #   format = Release.includes(:formats).find_by_id(params[:id])
  # end

  # def show_album_format
  #   Release.find_by_id(self.id).format_id
  # end

  # def show_album_format
  #   x = Release.where({"album_id" => self.id})
  #   Format.where({"id" => x})
  # end

  def show_album_format
    format = Release.find_by_id(self.id).format_id
    Format.find_by_id(format).name
  end
end
