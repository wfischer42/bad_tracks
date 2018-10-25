class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    checked_params = params.require('artist').permit('name')
    Artist.find_or_create_by(checked_params)
    redirect_to(songs_path)
  end
end
