class Role < ActiveRecord::Base
  belongs_to :member
  belongs_to :instrument
end