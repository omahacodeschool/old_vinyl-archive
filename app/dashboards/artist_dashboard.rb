require "administrate/base_dashboard"

class ArtistDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    bio: Field::String,
    area_id: SelectField.with_options(
      choices: Area.dropdown_values
    ),
    start_year: Field::Number,
    end_year: Field::Number,
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
    :name,
    :bio,
    :area_id,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :bio,
    :area_id,
    :start_year,
    :end_year,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :bio,
    :area_id,
    :start_year,
    :end_year,
  ]

  # Overwrite this method to customize how artists are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(artist)
  #   "Artist ##{artist.id}"
  # end
end
