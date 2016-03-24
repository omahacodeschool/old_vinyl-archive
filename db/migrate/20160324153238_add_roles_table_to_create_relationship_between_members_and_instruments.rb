class AddRolesTableToCreateRelationshipBetweenMembersAndInstruments < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :member_id
      t.integer :instrument_id

      t.timestamps null: false
    end
  end
end
