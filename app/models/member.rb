class Member < ActiveRecord::Base
  belongs_to :artist
  has_many :instruments, through: :roles
end
