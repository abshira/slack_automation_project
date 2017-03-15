Feature: Creating a public and private channels 

   Acceptance Criteria:
  * Must be able to create a public channel within the organisation
  * Must be able to create a private channel within the organisation

    Background:
      Given I am logged in to the organisation 

    Scenario: Creating a public channel 
      When i click on the create a new channel button
      And i enter a name for the channel and click create channel 
      Then i should have created a public channel within my organisation


    Scenario: Creating a private channel 
      When i click on the create a new channel button
      And I toggle the channel type to private
      And i enter a name for the channel and click create channel 
      Then i should have created a private channel within my organisation

