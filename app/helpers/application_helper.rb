module ApplicationHelper
  # ????
  def album_index_link(album)
    link_to(Albums, "/albums/index")
  end

  def album_show_link(album)
    link_to(album.title, "/albums/#{album.id}")
  end

  def artist_show_link(artist)
    link_to(artist.name, "/artists/#{artist.id}")
  end

  # ????
  def area_index_link(area)
    link_to(Areas, "/areas/index")
  end

  def area_show_link(area)
    link_to(area.name, "/areas/#{area.id}")
  end

  def genre_show_link(genre)
    link_to(genre.name, "/genres/#{genre.id}")
  end

  def format_show_link(format)
    link_to(format.name, "/formats/#{format.id}")
  end

  
end
