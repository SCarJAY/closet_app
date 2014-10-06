When(/^I click the show my fave outfits links$/) do
  click_link('Show Fave Outfits!')
end

Then(/^I should see all my saved outfits$/) do
  expect(page).to have_content('Fav Outfits')
end
