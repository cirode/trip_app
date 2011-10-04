When(/^I go to the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see "([^\"].+)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "([^\"].+)"$/) do |content|
  page.should_not have_content(content)
end

When(/^I follow "(.+)"$/) do |content|
  click_link content
end

When(/^I press "([^\"].+)"$/) do |content|
  click_button content
end

When(/^I should be on the (.+)$/) do |page_name|
  current_path.should == path_to(page_name)
end

And(/^show me the page$/) do
  save_and_open_page
end