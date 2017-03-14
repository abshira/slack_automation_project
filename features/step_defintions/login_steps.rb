Given(/^I am on the Slack organisation login page$/) do
  @b.goto 'https://doesntmatternow.slack.com/messages/general/'
  @invalid_email = FILE["user"][5]["email"]
  @invalid_password = FILE["user"][5]["password"]
  @valid_email = FILE["user"][3]["email"]
  @valid_password = FILE["user"][3]["password"]
end

When(/^I login with invalid details$/) do
  @b.text_field(id: 'email').send_keys @invalid_email
  @b.text_field(id: 'password').send_keys @invalid_password
  @b.button(id: 'signin_btn').click
end

When(/^I login with valid details$/) do
  @b.text_field(id: 'email').send_keys @valid_email
  @b.text_field(id: 'password').send_keys @valid_password
  @b.button(id: 'signin_btn').click
end

Then(/^I should be redirected to the organisation general channel$/) do
  expect(@b.url).to match 'https://doesntmatternow.slack.com/messages/general'
  @b.div(id: 'team_menu').wait_until_present
end

When(/^I sign out from the organisation$/) do
  @b.div(id: 'team_menu').click
  @b.li(id: 'logout').click
end

Then(/^I should not be able to sign into the organisation dashboard$/) do
  expect(@b.p(class: 'alert_info').text).to include 'You need to sign in to see this page.'
end

Then(/^I should receive an error message stating incorrect details$/) do
  expect(@b.p(class: 'alert_error').text).to include 'Sorry, you entered an incorrect email address or password.'
end

Then(/^I should be redirected to the signed out page$/) do
  @b.h1.wait_until_present
  expect(@b.url).to match 'https://doesntmatternow.slack.com/signout/done'
end
