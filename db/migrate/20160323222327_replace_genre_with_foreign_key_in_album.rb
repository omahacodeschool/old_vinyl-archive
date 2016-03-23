class ReplaceGenreWithForeignKeyInAlbum < ActiveRecord::Migration
  def change
    # 1. Remove the existing genre columns
    # 2. Add a new one that's a foreign key (integer)

    remove_column("albums", "genre")
    add_column("albums", "genre_id", "integer")
  end
end
