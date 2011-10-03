Given(/^I am logged out$/) do
  When "I go to the root page"
  And "I follow log out"
end

When(/^I log out$/) do
  log_out
end

