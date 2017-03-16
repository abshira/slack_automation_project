Feature: Slack search bar
 - Must have a search bar to type search objects

  Background: Logged in as a user.

  Scenario: Find all messages sent by me.
    Given I am on the homepage
    When I type "from:me" into the search box
    And I press enter
    Then I should see a list of messages I have sent.

  Scenario: Find all messages sent to me.
    Given I am on the homepage
    When I type "to:me" into the search box
    And I press enter
    Then I should see a list of messages sent to me.

  Scenario: Find all messages from a specific person.
    Given I am on the homepage
    When I type "from:@ks488" into the search box
    And I press enter
    Then I should see a list of messages from "@ks488"

  Scenario: Find all messages which mention a specific person.
    Given I am on the homepage
    When I type "in:@ks488" into the search box
    And I press enter
    Then I should see a list of messages which mention the person

  Scenario: Find all messages which contain a URL.
    Given I am on the homepage
    When I type "has:link" into the search box
    And I press enter
    Then I should see a list of messages which contain URLs.

  Scenario: Find all messages which contain a star.
    Given I am on the homepage
    When I type "has:star" into the search box
    And I press enter
    Then I should see a list of messages which contain stars.

  Scenario: Find all messages sent before a certain date.
    Given I am on the homepage
    When I type "before:14/03/17" into the search box
    And I press enter
    Then I should see a list of messages sent before the 14th March 2017

  Scenario: Find all messages sent after a certain date.
    Given I am on the homepage
    When I type "after:14/03/17" into the search box
    And I press enter
    Then I should see a list of messages sent after the 14th March 2017

  Scenario: Find all messages during a certain period.
    Given I am on the homepage
    When I type "during:March" into the search box
    And I press enter
    Then I should see a list of messages sent in March

  Scenario: Find all messages sent on a certain date.
    Given I am on the homepage
    When I type "on:14/03/17" into the search box
    And I press enter
    Then I should see a list of messages sent on the 14th March 2017

  Scenario: Find all messages and files in a channel.
    Given I am on the homepage
    When I type "in:general" into the search box
    And I press enter
    Then I should see a list of messages posted in the general channel.
