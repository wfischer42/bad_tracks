require 'rails_helper'

describe 'user registration' do
  context 'anonymous visitor' do
    context 'valid form entries' do
      subject do
        @username = "fred"
        visit '/'
        click_on 'Sign up for a new user account!'
        expect(current_path).to eq(new_user_path)
        fill_in :user_username, with: @username
        fill_in :user_password, with: 'test1234'
        click_on 'Create User'
        page
      end

      it { is_expected.to have_current_path(user_path(User.last)) }
      it { is_expected.to have_content("Welcome, #{@username}") }
    end
    context 'invalid entries' do
      context 'empty form' do
        subject do
          username = "fred"
          visit new_user_path
          click_on 'Create User'
          page
        end

        it { is_expected.to have_current_path(users_path) }
        it { is_expected.to have_content("That username is already taken.") }
      end
      context 'username exists' do
        subject do
          @username = "fred"
          user = User.create(username: @username, password: "1234" )
          visit new_user_path
          fill_in :user_username, with: @username
          fill_in :user_password, with: 'test1234'
          click_on 'Create User'
          page
        end
        it { is_expected.to have_current_path(users_path) }
        it { is_expected.to have_content("That username is already taken.") }
      end
    end
  end
end
