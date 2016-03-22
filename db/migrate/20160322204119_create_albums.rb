class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :artist_id
      t.string :title
      t.integer :release_date
      t.string :genre

      t.timestamps null: false
    end
  end
end
