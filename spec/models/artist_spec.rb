require 'rails_helper'

RSpec.describe Artist, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "#artist_images" do
    context "when an artist has a URL image" do
      it "returns an image URL that pertains to an artist" do
        # place assertions here
      end
    end

    context "when an artist image is uploaded via Carrierwave" do
      it "returns an image file that pertains to an artist" do
        # place assertions here
      end
    end
  end

end
