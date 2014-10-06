Feature: Login in
  In order to login
  As a user
  I want to see the login page of my app

Scenario: Visiting the login page
  Given I am at the login page
  When I click the log in button
  Then I should see the log in form

Scenario: Logging In
  Given I am at the log in form
  When I log in
  Then I should see my dashboard
