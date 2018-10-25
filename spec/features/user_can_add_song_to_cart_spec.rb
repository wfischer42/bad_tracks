require 'rails_helper'

describe 'Cart' do
  before do
    artist = Artist.create(name: "ASDF")
    artist.songs.create(title: "1234", play_count: 1234, length: 5678 )
    visit songs_path
    click_on "Add Song"
  end
  subject { page }

  it { is_expected.to have_current_path(songs_path)}
  context "updated contents" do
    let(:songs) { [Song.first] }
    subject { page.driver.request.session[:cart] }
    it { is_expected.to eq(songs) }
  end

end
