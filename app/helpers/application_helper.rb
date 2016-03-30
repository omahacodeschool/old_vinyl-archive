module ApplicationHelper

  def artist_link(artist)
    link_to(artist.name, "/artists/#{artist.id}")
  end

  def album_link(album)
    link_to(album.title, "/albums/#{album.id}")
  end

end
