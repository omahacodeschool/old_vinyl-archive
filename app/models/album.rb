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

  # Returns hash of release dates for a given album from the associated releases table
  # I BELIEVE there is a way to achieve this with ActiveRecord relations
  def show_release_date
    @dates = []
    releases = []

    releases = Release.where({"album_id" => self.id})
    releases.each do |release|
      @dates << release.release_date
    end
    @dates
  end

  # Returns hash of labels for a given album from the associated releases table
  # I BELIEVE there is a way to achieve this with ActiveRecord relations
  def show_album_label
    @labels = []
    releases = []

    releases = Release.where({"album_id" => self.id})
    releases.each do |release|
      @labels << release.label
    end
    @labels
  end

  # Retrieves the format_id for a given album from the associated releases table, then returns the format for that album
  # I BELIEVE there is a way to achieve this with ActiveRecord relations
  def show_album_format
    @formats = []
    @format_ids = []
    releases = []

    releases = Release.where({"album_id" => self.id})
    releases.each do |release|
      @format_ids << release.format_id
    end
    
    @format_ids.each do |this_id|
      @formats << Format.find_by_id(this_id)
    end
    @formats
  end
end
