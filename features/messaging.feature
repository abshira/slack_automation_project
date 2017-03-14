Feature: Messaging
  Must be able to Message on Slack

  - User must be able send a Direct Message
  - User must be able to post a Message in a private Channel 
  - User must be able to post a Message in a public Channel

	Background: Logged in as a user. 

	#Scenario: Posting a message on a public channel 
		#Given I am on the main organisation's homepage.
		#When I click on a public channel.
		#Then I click on the messaging text box.
		#And type in 'hello world'.
		#And click on enter.
		#Then i should see my post 'hello world'.
 

 Scenario: Post a message in a private channel 
		Given I am on Slacks Dashboard .
		When I click on a Private  channel.
		And type in 'You sure no one can see this' in the form .
		And click on enter.
		Then i should see my post 'You sure no one can see this' displayed.
