module ApplicationHelper
  
  def albums_index_link
    link_to("The Vinyl Archive", "/albums/index", {class: "vinyl_archive"})
  end

  def albums_show_link(album)
    link_to(album.title, "/albums/#{album.id}", {class: "show_link"})
  end
  
  def albums_show_image_link(album)
    link_to(image_tag(album.album_images.cover_image, size:"200x200"), "/albums/#{album.id}", {class: "show_album_image_link"})
  end

  def albums_user_addition_link
    link_to("Add an Album", "/albums/new", {class: "albums_user_addition"})
  end

  def artists_index_link
    link_to("Artists", "artists/index", {class: "index_link"})
  end

  def artists_show_link(artist)
    link_to(artist.name, "/artists/#{artist.id}", {class: "show_link"})
  end
  
  def artists_show_image_link(artist)
    link_to(image_tag(artist.artist_images.image_2, size:"100x100"), "/artists/#{artist.id}", {class: "artists_show_image_link"})
  end

  def areas_index_link
    link_to("Cities", "/areas/index", {class: "index_link"})
  end

  def areas_show_link(area)
    link_to(area.name, "/areas/#{area.id}", {class: "show_link"})
  end

  def decades_index_link
    link_to("Decades", "/decades/index", {class: "index_link"})
  end

  def decades_show_link(decade)
    link_to(decade.to_s, "/decades/#{decade}", {class: "show_link"})
  end

  def genres_index_link
    link_to("Genres", "/genres/index", {class: "index_link"})
  end

  def genres_show_link(genre)
    link_to(genre.name, "/genres/#{genre.id}", {class: "show_link"})
  end

  def hear_nebraska_link
    link_to("by Hear Nebraska", "https://www.hearnebraska.org", {class:"hear_nebraska"})
  end

  def formats_index_link
    link_to("Formats", "/formats/index", {class: "index_link"})
  end

  def formats_show_link(format)
    link_to(format.name, "/formats/#{format.id}", {class: "show_link"})
  end

end