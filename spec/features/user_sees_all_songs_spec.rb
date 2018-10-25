# This needs to be in features folder so rails knows what it's pointing to
require 'rails_helper'

# Don't need RSpec.describe in Rails. Just 'describe' will do
describe 'User Index:' do
  it 'user can see all songs' do
    artist_1 = Artist.create(name: "Journey")
    song_1 = artist_1.songs.create(title: "Don't Stop Believin'",
                                   length: 303,
                                   play_count: 759814)

    artist_2 = Artist.create(name: "The Beatles")

    song_2 = artist_2.songs.create(title: "Across the Universe",
                                   length: 281,
                                   play_count: 898179)

    visit '/songs'

    expect(page).to have_content("All Songs")
    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Plays: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Plays: #{song_2.play_count}")
  end
end
