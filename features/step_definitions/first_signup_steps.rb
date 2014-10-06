Given(/^I am at the login page$/) do
  visit login_path
end

When(/^I click the sign up button$/) do
  click_link "Sign up"
end

Then(/^I should see the sign up form$/) do
  find_field('Name').value
end

Given(/^I am at the sign up page$/) do
  visit new_user_path
end

When(/^I sign up$/) do
  fill_in 'Name', :with => 'Testy'
  fill_in 'Email', :with => 'test16@example.com'
  fill_in 'Password', :with => 'testpass'
  fill_in 'City', :with => 'Brooklyn'
  fill_in 'State', :with => 'NY'
  click_button('Create User')
end
