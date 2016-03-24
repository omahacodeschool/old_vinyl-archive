class Release < ActiveRecord::Base
  belongs_to :album
  has_many :formats
end
