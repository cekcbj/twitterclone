require "test_helper"

class CanSignUpnewUserTest < Capybara::Rails::TestCase
  test "usersignup" do
    visit root_path
    assert_content page, "Sign Up"
    click_link 'Sign Up'
    fill_in 'First name', with: 'Byron'
    fill_in 'Last name', with: 'Jones'
    fill_in 'Email', with: 'byron@yahoo.com'
    fill_in 'Password', with: '123455678'
    fill_in 'Password Confirmation', with: '12345678'
    click_button 'Sign Up'
    assert_content page, "Hello Byron"
  end
end
