require "administrate/base_dashboard"

class AlbumImageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    album: Field::BelongsTo,
    cover_image: Field::String,
    backcover_image: Field::String,
    insert_image_1: Field::String,
    insert_image_2: Field::String,
    insert_image_3: Field::String,
    record_image: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :album,
    :cover_image,
    :backcover_image,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :album,
    :cover_image,
    :backcover_image,
    :insert_image_1,
    :insert_image_2,
    :insert_image_3,
    :record_image,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :album,
    :cover_image,
    :backcover_image,
    :insert_image_1,
    :insert_image_2,
    :insert_image_3,
    :record_image,
  ]

  # Overwrite this method to customize how album images are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(album_image)
  #   "AlbumImage ##{album_image.id}"
  # end
end
