Given(/^I am on the main organisation's homepage\.$/) do
  @b.goto 'https://doesntmatternow.slack.com/messages/general/'
  @b.text_field(id: 'email').set 'amohamed@spartaglobal.co'
  @b.text_field(id: 'password').set 'jessie1324le4'
  @b.button(id: 'signin_btn').click

end

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

