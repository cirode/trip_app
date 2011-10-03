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

When(/^I follow (.+)$/) do |content_description|
  click_link get_content(content_description)
end

When(/^I should be on the (.+)$/) do |page_name|
  current_path.should == path_to(page_name)
end

And(/^show me the page$/) do
  save_and_open_page
end