Given /^I am on the home page$/ do
  visit '/'
end

Given /^I click "(.*?)"$/ do |arg1|
  visit new_post_path
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I click button "(.*?)"$/ do |text|
  click_button text
end