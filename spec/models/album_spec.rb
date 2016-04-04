require 'rails_helper'

RSpec.describe Album, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "#album_images" do
    context "when an album has a URL image" do
      it "returns an image URL that pertains to an album" do
        # place assertions here
      end
    end

    context "when an album image is uploaded via Carrierwave" do
      it "returns an image file that pertains to an album" do
        # place assertions here
      end
    end
  end

  describe "#tracklist" do
    context "when albums have tracks" do
      it "returns hash of track number keys and track name values" do
        album = Album.new(tracks.title: "this song")
        assert_equal({1=>"this song"}, album.tracklist)
      end
    end
  end

  describe "#show_release_date" do
    context "when albums have a release date" do
      it "returns a year integer for a particular release of an album" do
        album = Album.new(releases.release_date: 1965)
        assert_equal(1965, album.release_date)
      end
    end
  end

  describe "#show_album_label" do
    context "when albums have a label" do
      it "returns the name of a label for a particular release of an album" do
        # place assertions here
      end
    end
  end

  describe "#show_album_format" do
    context "when albums have a format" do
      it "returns the name of a format for a particular release of an album" do
        # place assertions here
      end
    end
  end

end
