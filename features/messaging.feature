Feature: Messaging

  Must be able to Message on Slack

  - User must be able send a Direct Message
  - User must be able to post a Message in a private Channel 
  - User must be able to post a Message in a public Channel


	The user can send direct messages to other users


	Background: Logged in as a user.



	Scenario: Send a direct message
		Given I'm on the slack group's page
		When I click a name in in the Direct Messaging menu
		And I type "Hello"
		And I press enter
		Then the message "Hello" should appear in the direct message history

	Scenario: Posting a message on a public channel
		When I click on a public channel.
		Then I click on the messaging text box type in 'hello world'.
		And  click on enter.
		Then i should see my post 'hello world'.


 Scenario: Post a message in a private channel 
		When I click on a Private  channel.
		And type in 'You sure no one can see this' in the form .
		And clicks on enter.
		Then i should see my post 'You sure no one can see this' displayed.


