class RemoveColumnsFromMembersTable < ActiveRecord::Migration
  def change
    remove_column :members, :instrument_1
    remove_column :members, :instrument_2
    remove_column :members, :instrument_3
  end
end
