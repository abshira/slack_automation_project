#Test - posting DM
Given(/^I'm on the slack group's page$/) do
 @b.goto "https://doesntmatternow.slack.com"
 @b.text_field(id: 'email').set 'koflynn@spartaglobal.co'
 @b.text_field(id: 'password').set 'W3rn3r'
 @b.button(id: 'signin_btn').click
end

When(/^I click a name in in the Direct Messaging menu$/) do
 @b.a(href: '/messages/@abii_mohamed').click
end

When(/^I type "([^"]*)"$/) do |message|
  @b.text_field.set message
end

When(/^I press enter$/) do
  @b.send_keys "\n"
end

Then(/^the message "([^"]*)" should appear in the direct message history$/) do |message|
  @b.span(text: message).exist?
end

#Test- Posting on a public channel 
When(/^I click on a public channel\.$/) do
 @b.links.collect(&:text)
 @b.links[25].click
end

Then(/^I click on the messaging text box type in 'hello world'\.$/) do
@b.element(css:"textarea[aria-label='Message input for Channel #random']").send_keys 'hello world'
end

Then(/^click on enter\.$/) do
  @b.send_keys "\n"
end

Then(/^i should see my post 'hello world'\.$/) do
  @b.span(text: 'hello world').exist?
end

#Test - posting with a code snippet 

When(/^I click on a channel$/) do
 @b.links[25].click
end

Then(/^I click on \+ button$/) do
  @b.button(id: 'primary_file_button').click
end

Then(/^I click on code or text button$/) do
  @b.a(href: '/files/create/snippet').click
end

Then(/^enter code$/) do
  @b.text_field(id: 'client_file_snippet_title_input').set'test code'
  @b.div(:class,'CodeMirror-scroll').click
  @b.send_keys 'this is some test code'
end

Then(/^enter comment$/) do
  @b.textarea(id: 'file_comment_textarea').click
  @b.send_keys 'this is some code comments added'
end

Then(/^click on create snippet button$/) do
  @b.send_keys "\n"
end

