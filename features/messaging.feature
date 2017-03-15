Feature: Messaging

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
		And click on enter.
		Then i should see my post 'hello world'.

  Scenario: Add a file from Google Docs to a DM
	  When I click a name in in the Direct Messaging menu
	  And I click the add button
	  And I select Add a file from Google Docs
		And I sign in to Google Docs
	  And I choose a file
	  And I click select
	  Then the document attached should appear in the DM history
