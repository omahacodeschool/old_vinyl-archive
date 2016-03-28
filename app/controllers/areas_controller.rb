class AreasController < ApplicationController
  def index
    @areas   = Area.all
    @artists = Artist.all
  end
end