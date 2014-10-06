Feature: See Favorite Outfits
  In order to see my favorite outfits
  As a user
  I want to view my saved outfits

Scenario: Visiting the Saved Outfits page
  Given I am at my dashboard
  When I click the show my fave outfits links
  Then I should see all my saved outfits
