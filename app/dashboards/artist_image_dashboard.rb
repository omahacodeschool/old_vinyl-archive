require "administrate/base_dashboard"

class ArtistImageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    artist: Field::BelongsTo,
    image_1: Field::String,
    image_2: Field::String,
    image_3: Field::String,
    image_4: Field::String,
    image_5: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :artist,
    :image_1,
    :image_2,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :artist,
    :image_1,
    :image_2,
    :image_3,
    :image_4,
    :image_5,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :artist,
    :image_1,
    :image_2,
    :image_3,
    :image_4,
    :image_5,
  ]

  # Overwrite this method to customize how artist images are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(artist_image)
  #   "ArtistImage ##{artist_image.id}"
  # end
end
