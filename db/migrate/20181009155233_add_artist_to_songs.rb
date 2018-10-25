# This command creates this migration
#   rails g migration AddArtistToSongs artist:references
# The title is parsed to determine what tables to use, while 'references'
# creates the add_reference line with the foreign_key line
class AddArtistToSongs < ActiveRecord::Migration[5.1]
  def change
    add_reference :songs, :artist, foreign_key: true
  end
end
