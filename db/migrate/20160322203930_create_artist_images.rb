class CreateArtistImages < ActiveRecord::Migration
  def change
    create_table :artist_images do |t|
      t.integer :artist_id
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.string :image_5

      t.timestamps null: false
    end
  end
end
