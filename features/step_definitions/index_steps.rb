Given /^I have a post titled "(.*?)"$/ do |title|
  Post.create(:title => title )
end

When /^I visit the home page$/ do
  visit '/'
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content(text)
end