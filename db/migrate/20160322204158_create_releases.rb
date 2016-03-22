class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.integer :album_id
      t.string :format
      t.string :label

      t.timestamps null: false
    end
  end
end
