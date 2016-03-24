class MovingReleaseAttributeFromAlbumToReleaseTable < ActiveRecord::Migration
  def change
    remove_column :albums, :release_date
    add_column :releases, :release_date, :integer
  end
end
