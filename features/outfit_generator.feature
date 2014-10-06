Feature: See Random outfit
  In order to see an outfit
  As a user
  I want to have an outfit generated for me

Scenario: Generating an Outfit
  Given I am at my dashboard
    And I click the dress me up link
    And I select an option from the dropdown
  When I click the Let's go button
  Then I should see an outfit
