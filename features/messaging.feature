
Feature: Messaging

  Must be able to create and delete messages on Slack

  - User must be able send a Direct Message
  - User must be able to post a Message in a private Channel
  - User must be able to post a Message in a public Channel


	The user can send direct messages to other users


	Background: Logged in as a user.
	Given I'm on the slack group's page


	Scenario: Send and delete a direct message
		When I click a name in in the Direct Messaging menu
		When I send the message 'message'
		And the message 'message' appears in the direct message history
    And I select message options
    And I click delete
    Then the message 'message' should be gone


	Scenario: Posting and deleting a message on a public channel
		When I click on a public channel.
		And I send a message 'hello world'.
		Then i should see my post 'hello world'.

    Scenario: Posting on a channel with a Code Snippet

      When I post a code snippet
      Then I enter title , code and comment
      And click on create snippet button


  Scenario: Add a file from Google Docs to a DM
	  When I click a name in in the Direct Messaging menu
	  And I click the add button
	  And I select Add a file from Google Docs
		And I sign in to Google Docs
	  And I choose a file
	  And I click select
	  Then the document attached should appear in the DM history



	Scenario: Posting and deleting a message in a private channel
		When I click on a Private  channel.
		And type in 'You sure no one can see this' in the form.
		Then i should see my post 'You sure no one can see this' displayed.
		#Then I should be able to delete the message on a private channel

	Scenario: Posting on a channel with a Code Snippet

		When I post a code snippet
		Then I enter title , code and comment
		And click on create snippet button
