When /^I submit the correct new user details$/ do
  sign_up
end

When /^I submit the new user details without an email$/ do
  sign_up(nil)
end

When /^I submit the new user details with an invalid email$/ do
  sign_up('invalid_email')
end

When /^I submit the new user details without a password$/ do
  sign_up('example@example.com', nil)
end

When /^I submit the new user details without a password_confirmation$/ do
  sign_up('example@example.com', nil, nil)
end

When /^I submit the new user details with a password that does not match the password confirmation$/ do
  sign_up('example@example.com', 'password', 'password_does_not_match')
end