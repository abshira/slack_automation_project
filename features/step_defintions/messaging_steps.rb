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
