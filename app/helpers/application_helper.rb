module ApplicationHelper
  
  def albums_index_link
    link_to("Albums", "/albums/index")
  end

  def albums_show_link(album)
    link_to(album.title, "/albums/#{album.id}")
  end
  
  def albums_show_image_link(album)
    link_to(image_tag(album.album_image.cover_image, size:"100x100"), "/albums/#{album.id}")
  end

  def artists_index_link
    link_to("Artists", "artists/index")
  end

  def artists_show_link(artist)
    link_to(artist.name, "/artists/#{artist.id}")
  end
  # ???? I think it's working, but it's hard to tell since the artist images link to the their own pages, that the link is on...
  def artists_show_image_link(artist)
    link_to(image_tag(@artist_images.image_1, size:"100x100"), "/artists/#{artist.id}")
  end

  def areas_index_link
    link_to("Areas", "/areas/index")
  end

  def areas_show_link(area)
    link_to(area.name, "/areas/#{area.id}")
  end

  def decades_index_link
    link_to("Decades", "/decades/index")
  end

  def genres_index_link
    link_to("Genres", "/genres/index")
  end

  def genres_show_link(genre)
    link_to(genre.name, "/genres/#{genre.id}")
  end

  def formats_index_link
    link_to("Formats", "/formats/index")
  end

  def formats_show_link(format)
    link_to(format.name, "/formats/#{format.id}")
  end
  
end
