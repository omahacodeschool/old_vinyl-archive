require "administrate/base_dashboard"

class MemberDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    # Artist doesn't belong to Member, other way around
    # Would we still use Field:BelongsTo, ???
    artist_id: SelectField.with_options(
      choices: Artist.dropdown_values
    ),
    first_name: Field::String,
    last_name: Field::String,
    # Added 'Field::BelongsTo,' the 3 instruments below
    instrument_1: Field::BelongsTo,
    instrument_2: Field::BelongsTo,
    instrument_3: Field::BelongsTo,
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
    :first_name,
    :last_name,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :artist_id,
    :first_name,
    :last_name,
    :instrument_1,
    :instrument_2,
    :instrument_3,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :artist_id,
    :first_name,
    :last_name,
    :instrument_1,
    :instrument_2,
    :instrument_3,
  ]

  # Overwrite this method to customize how members are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(member)
  #   "Member ##{member.id}"
  # end
end
