require 'rails_helper'

describe Song, type: :model do
  describe 'Relationships' do
    # Uses 'shoulda-matcher' to create plain english one-line test for
    # relationships
    it { should belong_to(:artist) }
    it { should have_many(:playlist_song_entries) }
    it { should have_many(:playlists).through(:playlist_song_entries) }
  end
end
