Given(/^I am at my dashboard$/) do
  visit login_path
  fill_in 'Email', :with => 'test15@example.com'
      fill_in 'Password', :with => 'testpass'
      click_button('Login')
end

When(/^I click the log out button$/) do
  click_link('Logout')
end
