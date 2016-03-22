class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :artist_id
      t.string :first_name
      t.string :last_name
      t.string :instrument_1
      t.string :instrument_2
      t.string :instrument_3

      t.timestamps null: false
    end
  end
end
