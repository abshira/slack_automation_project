 Feature: Adding and removing users from public and private channels 

   Acceptance Criteria:
  * Must be able to add users from a public/private channel
  * Must be able to remove users from a public/private channel

    Background:
      Given I am on the organisation home channel

    Scenario: Adding and deleting people to/from public channels
      When i choose a user to add to my channel
      Then i should be able to choose the user to my channel
      When i click on the post confirming the invite
      Then i should be able to remove the user from the public channel

    Scenario: Adding and deleting people to/from private channels
      When i choose a user to add to my channel
      Then i should be able to choose the user to my channel
      When i click on the post confirming the invite
      Then i should be able to remove the user from the private channel
      
