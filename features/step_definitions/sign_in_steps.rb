Given(/^I am signed out$/) do
  sign_out
end

When(/^I sign out$/) do
  sign_out
end

When(/^I am signed in as #{capture_model}$/) do |model|
  user = model!(model)
  sign_in(user.email)
end

When(/^I submit the correct sign in details for #{capture_model}$/) do |model|
  user = model!(model)
  sign_in(user.email)
end

When(/^I submit an incorrect password for #{capture_model}$/) do |model|
  user = model!(model)
  sign_in(user.email, 'incorrect_password')
end

When(/^I submit an incorrect email for #{capture_model}$/) do |model|
  sign_in('incorrect_email')
end

Then(/^I should be signed in$/) do
  page.should have_content(the_sign_out_text)
end

Then(/^I should not be signed in$/) do
  page.should_not have_content(the_sign_out_text)
end

Then(/^I follow the sign up link$/) do
  click_on the_sign_up_text
end

Then(/^I should see the sign in prompt$/) do
  page.should have_content(the_sign_in_text)
end

Then(/^I should not see the sign in prompt$/) do
  page.should_not have_content(the_sign_in_text)
end
Then(/^I should see the sign out prompt$/) do
  page.should have_content(the_sign_out_text)
end

Then(/^I should not see the sign out prompt$/) do
  page.should_not have_content(the_sign_out_text)
end

Then(/^I follow the sign in prompt$/) do
  click_on the_sign_in_text
end

When(/^I follow the sign out prompt$/) do
  click_on the_sign_out_text
end

When(/^I press the sign in button$/) do
  click_button the_sign_in_text
end

Then(/^I should not see the default authlogic message$/) do
  page.should_not have_content("You did not provide any details for authentication")
end