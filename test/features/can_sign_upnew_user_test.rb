require "test_helper"

class CanSignUpnewUserTest < Capybara::Rails::TestCase
  test "usersignup" do
    visit root_path
    assert_content page, "Sign up now"
    click_link 'Sign up now!'
    fill_in 'First name', with: 'Byron'
    fill_in 'Last name', with: 'Jones'
    fill_in 'Email', with: 'byron@yahoo.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password Confirmation', with: '12345678'
    click_button 'Sign Up'
    assert_content page, "Thanks for signing up"
  end
end
