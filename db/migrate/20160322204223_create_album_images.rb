class CreateAlbumImages < ActiveRecord::Migration
  def change
    create_table :album_images do |t|
      t.integer :album_id
      t.string :cover_image
      t.string :backcover_image
      t.string :insert_image_1
      t.string :insert_image_2
      t.string :insert_image_3
      t.string :record_image

      t.timestamps null: false
    end
  end
end
