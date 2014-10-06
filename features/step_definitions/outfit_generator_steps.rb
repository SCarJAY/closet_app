When(/^I click the dress me up link$/) do
  click_link('Dress Me Up!')
end

Given(/^I select an option from the dropdown$/) do
  page.find_by_id('dress_code').find("option[value='casual']").select_option
end

When(/^I click the Let's go button$/) do
  click_button("Let's Go!")
end

Then(/^I should see an outfit$/) do
  expect(page).to have_content('Shoes')
end

