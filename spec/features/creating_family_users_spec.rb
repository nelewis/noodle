require 'spec_helper'

feature 'Creating Family Users:' do
  scenario "can create Family" do
    visit '/'
	click link 'New Family'
	fill_in 'First Name', :with => 'Nicole'
	fill_in 'Last Name', :with => 'Lewis'
	fill_in 'What your Mum said to you the most', :with => 'For heavens sake, Nik, get a move on'
	fill_in 'Birthday day', :with => '24'
	fill_in 'Birthday month', :with => '01'
	fill_in 'Birthday year', :with => '1966'
	fill_in 'Likes', :with => 'Singing, dancing, making things, fiddle, poetry, family and the shelter kids'
	fill_in 'Street', :with => '1117 27th Ave'
	fill_in 'City', :with => 'Seattle'
	fill_in 'State', :with =>'WA'
	fill_in 'Zip', :with => '98122'
	fill_in 'Country', :with => 'USA'
	fill_in 'Mother', :with => 'Karen Lewis'
	fill_in 'Father', :with => 'Gerald Lewis'
	fill_in 'Sibling1', :with => 'Gerard Lewis'
	fill_in 'Sibling2', :with => 'Natasha Etherington'
	fill_in 'Sibling3', :with => 'Adrian Lewis'
	fill_in 'Fathers Mother', :with => 'Annie Lewis'
	fill_in 'Fathers Father', :with => 'Arthur Lewis'
	fill_in 'Mothers Mother', :with => 'Rose Gibbons'
	fill_in 'Mothers Father', :with => 'Stanley Gibbons' 
	click_button 'Create Family User'
	page.should have_content('Family has been created')
  end
end