class ArtistImage < ActiveRecord::Base
  belongs_to :artist

  mount_uploader :image_1, ImageUploader
end
