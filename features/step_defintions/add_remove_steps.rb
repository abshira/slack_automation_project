Given(/^ I am on an organisation channel$/) do
@b.goto "https://doesntmatternow.slack.com/messages/general/"
end 

When(/^i choose a user to add to my channel$/) do
  @b.a(class: 'end_action_invite').wait_until_present.click
end

Then(/^i should be able to choose the user to my channel$/) do
  @b.input(id: 'channel_invite_filter').wait_until_present.click
  @b.send_keys 'endofzeeworld'
  @b.div(class: 'name_container overflow_ellipsis').click
  @b.button(class: 'btn btn_primary btn_large invite_go ladda-button')
end

When(/^i click on the post confirming the invite$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^i should be able to remove the user from the public channel$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^i should be able to remove the user from the private channel$/) do
  pending # Write code here that turns the phrase above into concrete actions
end