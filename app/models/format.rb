class Format < ActiveRecord::Base
  belongs_to :release
  has_many :albums

  # Return a count of releases associated with a certain format
  def release_count
    Release.where({"format_id" => self.id}).count
  end
end
