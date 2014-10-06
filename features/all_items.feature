Feature: See all items
  In order to see all my clothes
  As a user
  I want to view my closet

Scenario: Visiting the closet page
  Given I am at my dashboard
  When I click the show me my closet link
  Then I should see all my items
