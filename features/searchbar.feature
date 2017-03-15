Feature: Slack search bar
 - Must have a search bar to type search objects

  Background: Logged in as a user.

  Scenario: Find all messages sent to me.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'to:me'
    And I press enter
    Then I should see a list of messages I have sent.

  Scenario: Find all messages from a specific person.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'from:me'
    And I press enter
    Then I should see a list of messages sent to me.

  Scenario: Find all messages from a specific person.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'from:@ks488'
    And I press enter
    Then I should see a list of messages from '@ks488'

  Scenario: Find all messages which mention a specific person.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'in:@ks488'
    And I press enter
    Then I should see a list of messages which mention '@ks488'

  Scenario: Find all messages which contain a URL.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'has:link'
    And I press enter
    Then I should see a list of messages which contain URLs.

  Scenario: Find all messages which contain a star.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'has:star'
    And I press enter
    Then I should see a list of messages which contain stars.

  Scenario: Find all messages sent before a certain date.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'before:14/03/17'
    And I press enter
    Then I should see a list of messages sent before the 14th March 2017

  Scenario: Find all messages sent after a certain date.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'after:14/03/17'
    And I press enter
    Then I should see a list of messages sent after the 14th March 2017

  Scenario: Find all messages during a certain period.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'during:March'
    And I press enter
    Then I should see a list of messages sent in March

  Scenario: Find all messages sent on a certain date.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'on:14/03/17'
    And I press enter
    Then I should see a list of messages sent on the 14th March 2017

  Scenario: Find all messages and files in a channel.
    Given I am on the main organisation's homepage
    When I click on the search bar
    And I type in 'in:general'
    And I press enter
    Then I should see a list of messages posted in the general channel.
