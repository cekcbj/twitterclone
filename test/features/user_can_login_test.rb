require "test_helper"

class UserCanLoginTest < Capybara::Rails::TestCase
  test "userlogin" do

    User.create first_name:'Byron', last_name: "Jones", email:"Byron@yahoo.com", password: "12345678"

    visit root_path
    fill_in 'email', with:'Byron@yahoo.com'
    fill_in 'password', with:'12345678'

    click_button "Log In"
    assert_content page, "Hello Byron"
  end
end
