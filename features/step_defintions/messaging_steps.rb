
Given(/^I'm on the slack group's page$/) do
 @b.goto "https://doesntmatternow.slack.com"
 @b.text_field(id: 'email').set 'koflynn@spartaglobal.co'
 @b.text_field(id: 'password').set 'W3rn3r'
 @b.button(id: 'signin_btn').click
 sleep 5
end

When(/^I click a name in in the Direct Messaging menu$/) do
	@b.a(href: '/messages/@abii_mohamed').click
end

When(/^I send the message '(.+)'$/) do |message|
	@b.text_field.send_keys message
	@b.send_keys "\n"
end


Then(/^the message '(.+)' should appear in the direct message history$/) do |message|
	@b.span(text: message).exist?
end 

# Then(/^I should be able to delete the message$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end


When(/^I click on a public channel\.$/) do
	@b.links.collect(&:text)
	@b.links[25].click
end 

When(/^I send a message 'hello world'\.$/) do
	@b.element(css:"textarea[aria-label='Message input for Channel #random']").send_keys 'hello world'
  @b.send_keys "\n"
end

Then(/^i should see my post 'hello world'\.$/) do
  @b.span(text: 'hello world').exist?
end

# Then(/^I should be able to delete the message on a public channel$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

When(/^I click on a Private  channel\.$/) do
  @b.li(class: "group_G4GTMRZH7").click
end

When(/^type in 'You sure no one can see this' in the form\.$/) do
	@b.textarea(id:'msg_input').set 'You sure no one can see this'
	@b.send_keys("\n")
end

Then(/^i should see my post 'You sure no one can see this' displayed\.$/) do
  expect(@b.div(class: 'message_content').present?).to be true
end

# Then(/^I should be able to delete the message on a private channel$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end


#Test - posting with a code snippet 
 When(/^I post a code snippet$/) do
  @b.links[25].click
  @b.button(id: 'primary_file_button').click
  @b.a(href: '/files/create/snippet').click
end

Then(/^I enter title , code and comment$/) do
  @b.text_field(id: 'client_file_snippet_title_input').set'test code'
  @b.div(:class,'CodeMirror-scroll').click
  @b.send_keys 'this is some test code'
  @b.textarea(id: 'file_comment_textarea').click
  @b.send_keys 'this is some code comments added'
end

Then(/^click on create snippet button$/) do
  @b.send_keys "\n"
end


