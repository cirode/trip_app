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
  page.should have_content(get_content('the sign out prompt'))
end

Then(/^I should not be signed in$/) do
  page.should_not have_content(get_content('the sign out prompt'))
end