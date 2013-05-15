require 'spec_helper'

feature 'Signing up:' do
  scenario 'Successful sign up' do
    visit '/'
	click link 'Sign up'
	fill_in 'Email', :with => 'user@test.com'
	fill_in 'Password', :with => 'password'
	fill_in 'Password Confirmation', :with => 'password'
	click_button 'Sign up'
	message = "Please open the link to activate your account."
	page.should have_content(message)
  end
end