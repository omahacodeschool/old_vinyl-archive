require 'rails_helper'

RSpec.describe Release, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "::by_decade" do
    context "when decades have album release's release dates" do
      it "returns a hash of decades keys and Release collection values" do
        # Not sure about testing for class method
        release = Release.new(release_date: "1965")
        assert_equal(, Release.by_decade)
      end
    end

    # context "when decades don't have releases" do
    #   it "returns hash of decade keys and nil values" do
    #     # place assertions here
    #   end
    # end
  end

end
