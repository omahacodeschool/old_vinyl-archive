class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :bio
      t.integer :area_id
      t.integer :start_year
      t.integer :end_year

      t.timestamps null: false
    end
  end
end
