require "pry"

Given(/^I am on the homepage$/) do
  @b.goto "https://doesntmatternow.slack.com"
  @b.text_field(id: 'email').set 'koflynn@spartaglobal.co'
  @b.text_field(id: 'password').set 'W3rn3r'
  @b.button(id: 'signin_btn').click
  search_box = @b.div(class: "search_input_wrapper")
  Watir::Wait.until {search_box.visible?}
end

When(/^I type "([^"]*)" into the search box$/) do |search_term|
  if @b.button(id: 'search_clear').visible?
    @b.button(id: 'search_clear').click
  end
  @b.text_field.send_keys search_term
end

When(/^I press enter$/) do
  @b.text_field.send_keys "\n"
end

Then(/^I should see a list of messages I have sent\.$/) do
  @b.div(id: 'search_message_results').a(class: 'message_sender color_U4HFP5NLB color_5b89d5 member member_preview_link').text.include? 'koflynn'
end

Then(/^I should see a list of messages sent to me\.$/) do
  @b.div(id: 'search_filters').text.include? 'Messages'
end

Then(/^I should see a list of messages from the person$/) do
  @b.div(id: 'search_message_results').a(class: 'message_sender color_U4HFP5NLB color_5b89d5 member member_preview_link').text.include? 'koflynn'
end

Then(/^I should see a list of messages which mention the person$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a list of messages which contain URLs\.$/) do
  @b.div(id: 'search_filters').text.include? 'https'
end

Then(/^I should see a list of messages which contain stars\.$/) do
  @b.div(id: 'search_filters').text.include? 'Messages'
end

Then(/^I should see a list of messages sent before the (\d+)th March (\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a list of messages sent after the (\d+)th March (\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a list of messages sent in March$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a list of messages sent on the (\d+)th March (\d+)$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a list of messages posted in the general channel\.$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
