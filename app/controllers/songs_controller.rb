class SongsController < ApplicationController
  def index
    # This looks for views/songs/index.html.erb by default
    # Don't need to explicitly state the view to load.
    @songs = Song.all
  end
end
