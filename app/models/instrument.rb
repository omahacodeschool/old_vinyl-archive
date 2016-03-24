class Instrument < ActiveRecord::Base
  belongs_to :member
  belongs_to :role
end
