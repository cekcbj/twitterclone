require "test_helper"

class CanSignUpnewUserTest < Capybara::Rails::TestCase
  test "usersignup" do
    visit root_path
    assert_content page, "Sign Up"
    click_button "Sign Up"
    fill_in 'first_name', with: 'Byron'
    fill_in 'last_name', with: 'Jones'
    fill_in 'email', with: 'byron@yahoo.com'
    click_button 'Sign Up'
    refute_content page, "Hello"
  end
end
