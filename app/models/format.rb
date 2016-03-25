class Format < ActiveRecord::Base
  belongs_to :release
  has_many :albums
end
