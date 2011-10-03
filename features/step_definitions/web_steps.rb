When(/^I go to the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end