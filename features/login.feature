Feature: Login and logout to Slack web application

  Acceptance Criteia:
  * Must not be able to view restricted content with invalid credentials.
  * Must be able to view restricted content with valid credentials.
  * Must be able to sign out from organisation dashboard.

    Background:
      Given I am on the Slack organisation login page

    Scenario: Unsuccessful login with invalid login credentials
      When I login with invalid details
      Then I should not be able to sign into the organisation dashboard
      And I should receive an error message stating incorrect details

    Scenario: Successful login with valid login credentials
      When I login with valid details
      Then I should be redirected to the organisation general channel

    Scenario: Successful login followed by logout
      When I login with valid details
      Then I should be redirected to the organisation general channel
      When I sign out from the organisation
      Then I should be redirected to the signed out page
