class Release < ActiveRecord::Base
  belongs_to :album
  belongs_to :format
end
