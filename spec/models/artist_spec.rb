require 'rails_helper'

describe Artist, type: :model do
  describe 'Validations' do
    # Using 'shoulda-matchers' gem, this next line does all the work to
    # do a validation test. Check specs for other methods
    it {should validate_presence_of(:name) }
  end

  describe 'Relationships' do
    # Uses 'shoulda-matcher' to create plain english one-line test for
    # relationships
    it { should have_many(:songs) }
  end
end
