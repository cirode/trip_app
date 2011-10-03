def sign_out
  visit path_to 'root page'
  if page.has_content?('sign out')
    click_link('sign out')
  end
end

Given(/^I am signed out$/) do
  sign_out
end

When(/^I sign out$/) do
  sign_out
end

When(/^I am signed in as #{capture_model}$/) do |model|
  user = model!(model)
  visit path_to("sign in page")
  fill_in 'user_email', :with => user.email
  fill_in 'user_password', :with => 'password'
  click_button "Sign in"
end
