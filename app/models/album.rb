class Album < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  has_many   :releases
  has_many   :album_images
  has_many   :tracks
  has_one    :area, through: :artist
  has_many   :formats, through: :release

  # Return the AlbumImage object for this album.
  # I BELIEVE there is a way to achieve this with ActiveRecord relations
  def album_images
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

  # Returns the release date for a given album from the associated releases table
  # I BELIEVE there is a way to achieve this with ActiveRecord relations
  def show_release_date
    release = Release.where({"album_id" => self.id})
    release.each do |release|
      @date = release.release_date
    end
    @date
  end

  # Returns the label for a given album from the associated releases table
  # I BELIEVE there is a way to achieve this with ActiveRecord relations
  def show_album_label
    release = Release.where({"album_id" => self.id})
    release.each do |release|
      @label = release.label
    end
    @label
  end

  # Retrieves the format_id for a given album from the associated releases table, then returns the format for that album
  # Refactored by removing the '.name' call on at the end of the last line to accommodate the 'formats_show_link' method
  # I BELIEVE there is a way to achieve this with ActiveRecord relations
  def show_album_format
    format = Release.find_by_album_id(self.id).format_id
    Format.find_by_id(format)
  end
end
