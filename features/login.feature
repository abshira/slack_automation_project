#Feature: Login and logout to Slack web application

 # Acceptance Criteia:
  #* Must not be able to view restricted content with invalid credentials.
  #* Must be able to view restricted content with valid credentials.

   # Background:
    #  Given I am on the Slack organisation login page

    #Scenario: Unsuccessful login with invalid login credentials
     # When I enter an invalid email account into the email field
      #And I enter an invalid password into the password field
      #And I click the sign in button
      #Then I should not be able to sign into the organisation dashboard
      #And I should receive an error message stating incorrect details
