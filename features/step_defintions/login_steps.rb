Given(/^I am on the Slack organisation login page$/) do
  @lp = LoginPage.new @b
  @lp.visit
end

When(/^I login with invalid details$/) do
  @lp.login 'invalidemail@invalidemail.com', 'qwerty'
end

Then(/^I should receive an error message stating incorrect details$/) do
  expect(@lp.error?).to eq true
end

When(/^I login with valid details$/) do
  @lp.login FILE["user"][3]["email"], FILE["user"][3]["password"]
end

Then(/^I should be redirected to the organisation general channel$/) do
  expect(@lp.url).to match 'https://doesntmatternow.slack.com/messages'
end

When(/^I sign out from the organisation$/) do
  @lp.logout
end

Then(/^I should be redirected to the signed out page$/) do
  @b.h1.wait_until_present
  expect(@b.url).to match 'https://doesntmatternow.slack.com/signout/done'
end
