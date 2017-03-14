 Feature: Messaging 

 	The user can post a message on the public account

 	Background: Logged in as a user.

 	Scenario: Posting a message on a public channel
 		Given I am on the main organisation's homepage.
 		When I click on a public channel.
 		Then I click on the messaging text box.
 		And type in 'hello world'.
 		And click on enter.
 		Then i should see my post 'hello world'.
