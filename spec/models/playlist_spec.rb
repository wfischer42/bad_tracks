require 'rails_helper'

describe Playlist, type: :model do
  describe 'Relationships' do
    # Setup for many-to-many relationship with intermediate table
    it { should have_many(:playlist_song_entries) }
    it { should have_many(:songs).through(:playlist_song_entries) }
  end
end
