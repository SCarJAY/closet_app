When(/^I click the log in button$/) do
  click_button "Login"
end

Then(/^I should see the log in form$/) do
  find_field('password').value
end

Given(/^I am at the log in form$/) do
  visit login_path
end

When(/^I log in$/) do
      fill_in 'Email', :with => 'p.sweetpotota@gmail.com'
      fill_in 'Password', :with => 'potatoes4eva'
      click_button('Login')
end

Then(/^I should see my dashboard$/) do
  expect(page).to have_content("Sarah")
end
Then(/^I should see the splash page$/) do
  expect(page).to have_css('body')
end
