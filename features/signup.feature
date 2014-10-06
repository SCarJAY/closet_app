Feature: Sign up
  In order to sign up
  As a user
  I want to see the signup page of my app

Scenario: Visiting the sign up page
  Given I am at the login page
  When I click the sign up button
  Then I should see the sign up form

Scenario: Signing up
  Given I am at the sign up page
  When I sign up
  Then I should see my dashboard
