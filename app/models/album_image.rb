class AlbumImage < ActiveRecord::Base
  belongs_to :album

  mount_uploader :cover_image, ImageUploader
  mount_uploader :backcover_image, ImageUploader
  mount_uploader :insert_image_1, ImageUploader
  mount_uploader :insert_image_2, ImageUploader
  mount_uploader :insert_image_3, ImageUploader
  mount_uploader :record_image, ImageUploader

end
