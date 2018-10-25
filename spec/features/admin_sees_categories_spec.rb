require 'rails_helper'

describe 'categories index page' do
  before(:all) do
    @username = 'Admin'
    @password = 'test1234'
    @admin = User.create( username: @username,
                          password: @password,
                          role: :admin)
    @username = "Joe"
    @user = User.create( username: @username,
                          password: @password,
                          role: :default)
  end

  context 'as an admin user' do
    subject do
      allow_any_instance_of(ApplicationController)
      .to receive(:current_user).and_return(@admin)
      visit admin_categories_path
      page
    end

    it { is_expected.to have_current_path(admin_categories_path)}
    it { is_expected.to have_content("Admin Categories")}
    it { is_expected.to have_http_status(200)}
  end

  context 'as a registered user' do
    subject do
      allow_any_instance_of(ApplicationController)
      .to receive(:current_user).and_return(@user)
      visit admin_categories_path
      page
    end

    it { is_expected.to have_current_path(admin_categories_path)}
    it { is_expected.to have_http_status(404)}
  end
end
