require 'rails_helper'

describe PlaylistSongEntry, type: :model do
  describe 'Relationships' do
    it { should belong_to(:song) }
    it { should belong_to(:playlist) }
  end
end
