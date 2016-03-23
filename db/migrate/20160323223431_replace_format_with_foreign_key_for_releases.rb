class ReplaceFormatWithForeignKeyForReleases < ActiveRecord::Migration
  def change
    remove_column :releases, :format
    add_column :releases, :format_id, :integer
  end
end
