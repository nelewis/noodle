require 'spec_helper'

feature 'Signing in:' do
  before do
   Factory(:user, :email => "user@test.com")
  end
  scenario 'Sign in via confirmation' do	
    open_email "user@test.com", :with_subject => /Confirmation/
	click_first_link_in_email
	page.should have_content('Your account was successfully confirmed')
	page.should have_content('Signed in as user@test.com')
  end
end