When(/^I go to the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see (.+)$/) do |content_description|
  page.should have_content(get_content(content_description))
end

Then(/^I should not see (.+)$/) do |content_description|
  page.should_not have_content(get_content(content_description))
end