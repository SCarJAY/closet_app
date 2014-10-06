When(/^I click the show me my closet link$/) do
  click_link('Show Me My Closet!')
end

Then(/^I should see all my items$/) do
  expect(page).to have_css('div.polaroid-images')
end
