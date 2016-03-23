require "administrate/base_dashboard"

class AlbumDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    artist_id: SelectField.with_options(
      choices: Artist.dropdown_values
    ),
    title: Field::String,
    release_date: Field::Number,
    genre: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :artist_id,
    :title,
    :release_date,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :artist_id,
    :title,
    :release_date,
    :genre,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :artist_id,
    :title,
    :release_date,
    :genre,
  ]

  # Overwrite this method to customize how albums are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(album)
  #   "Album ##{album.id}"
  # end
end
