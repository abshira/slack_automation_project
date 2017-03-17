Given(/^I am logged in to the organisation$/) do
 @b.goto "https://doesntmatternow.slack.com"
 @b.text_field(id: 'email').set 'koflynn@spartaglobal.co'
 @b.text_field(id: 'password').set 'W3rn3r'
 @b.button(id: 'signin_btn').click
end

When(/^i click on the create a new channel button$/) do
@b.button(class: 'new_channel_btn ts_icon ts_icon_plus_circle channels_list_new_btn btn_unstyle').click
end

When(/^i enter a name for the channel and click create channel$/) do
@b.input(id: 'channel_create_title').wait_until_present.click
@b.send_keys 'testpublic34533322'
@b.button(id:'save_channel').wait_until_present.click
end


Then(/^i should have created a public channel within my organisation$/) do
expect(@b.div(id: 'channel_created').wait_until_present.exist?).to be true
end

When(/^I toggle the channel type to private$/) do
@b.input(id: 'channel_create_title').wait_until_present.click	
@b.send_keys 'testprivate321453322'
@b.div(class: 'ts_toggle_button').wait_until_present.click
@b.button(id:'save_channel').wait_until_present.click

end

Then(/^i should have created a private channel within my organisation$/) do
expect(@b.span(class: 'channel_overlay_title_opener').present?).to be false
end















