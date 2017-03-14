Feature: Messaging

	The user can send direct messages to other users

	Background: Logged in as a user.









	Scenario: Send a direct message
		Given I'm on the slack group's page
		When I click a name in in the Direct Messaging menu
		And I type "Hello"
		And I press enter
		Then the message "Hello" should appear in the direct message history
