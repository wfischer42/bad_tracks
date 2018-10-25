require 'rails_helper'

describe 'Route /artists/new' do
  it 'allows user to create a new artist' do
    visit new_artist_path
    artist_name = "Wierd Al"
    fill_in 'artist[name]', with: artist_name
    click_on 'Create Artist'

    expect(Artist.last.name).to eq(artist_name)
    expect(page).to have_current_path(songs_path)
  end
end
