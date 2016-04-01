class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_layout_information

  def set_layout_information
    @areas    = Area.all
    @artists  = Artist.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all
  end
end
