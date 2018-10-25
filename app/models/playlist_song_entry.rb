# All models should have singular filenames. Otherwise Rails won't recognize.

class PlaylistSongEntry < ApplicationRecord
  belongs_to :song
  belongs_to :playlist
end
