class Artist < ActiveRecord::Base
  belongs_to :area
  has_many :members
end
