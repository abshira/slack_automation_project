Given(/^I am on Slacks Dashboard \.$/) do
@b.goto 'https://doesntmatternow.slack.com/messages'
@b.text_field(id: 'email').set 'kabdul@spartaglobal.co'
@b.text_field(id: 'password').set 'sheen7w1'
@b.button(id: 'signin_btn').click


end

When(/^I click on a Private  channel\.$/) do
  @b.li(class: "group_G4GTMRZH7").click
end

When(/^type in 'You sure no one can see this' in the form \.$/) do 
@b.textarea(id:'msg_input').set 'You sure no one can see this'
end



When(/^click on enter\.$/) do
  @b.send_keys("\n")
end

Then(/^i should see my post 'You sure no one can see this' displayed\.$/) do
  expect(@b.div(class: 'message_content').present?).to be true
end