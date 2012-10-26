Given /^I am on the "([^"]*)" page$/ do |path|
  visit path
end
Then /^the page should have the text "([^"]*)"$/ do |text|
  page.should have_content text
end
When /^the page should have a "([^"]*)" link$/ do |link|
  page.should have_link link
end
When /^I click the "([^"]*)" link$/ do |link|
  click_link link
end
Then /^I should be taken to the "([^"]*)" page$/ do |path|
  current_path.should == path
end
When /^I fill in the "([^"]*)" field with "([^"]*)"$/ do |field, data|
  fill_in field, :with => data
end
When /^click on the "([^"]*)" button$/ do |button|
  click_button button
end
Given /^I am on the users page$/ do
  step %{I am on the "/users" page}
end
Then /^I should be taken to the user creation page$/ do
  current_path.should == "/users/new"
end
Given /^I am on the user creation page page$/ do
  visit "/users/new"
end