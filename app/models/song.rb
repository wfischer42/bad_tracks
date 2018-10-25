# All models should have singular filenames. Otherwise Rails won't recognize.

class Song < ApplicationRecord
  belongs_to :artist

  has_many :playlist_song_entries
  has_many :playlists, through: :playlist_song_entries

  def instance_method
    puts "This is an instance method"
    puts self
  end
end
