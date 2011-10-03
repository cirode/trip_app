def log_out
  visit path_to 'root page'
  if page.has_content?('log out')
    click_link('log out')
  end
end

Given(/^I am logged out$/) do
  log_out
end

When(/^I log out$/) do
  log_out
end

