describe "User login" do
  before(:all) do
    @username = 'fred'
    @password = 'coolio'
  end
  describe "anonymous visitor" do
    context "with valid credentials" do
      before(:each) do
        User.create(username: @username, password: @password)
        visit root_path

        click_on "I already have an account"
        @page = page
      end
      subject { @page }

      context "root links to login page" do
        it { is_expected.to have_current_path(login_path) }
      end
      context "user can login from login page" do
        subject do
          fill_in :username, with: @username
          fill_in :password, with: @password
          click_on "Sign in"
          page
        end
        it { is_expected.to have_current_path(user_path(User.last))}
        it { is_expected.to have_content(@username)}
      end
    end
  end
end
