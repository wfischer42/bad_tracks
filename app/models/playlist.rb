# All models should have singular filenames. Otherwise Rails won't recognize.

class Playlist < ApplicationRecord
  has_many :playlist_song_entries
  has_many :songs, through: :playlist_song_entries
end
