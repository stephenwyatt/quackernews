Given /^I should not see "(.*?)"$/ do |text|
 page.should_not have_content(text)
end

Given /^I have a post called "(.*?)"$/ do |text|
  Post.create(:title => text)
end

Given /^I click on post "(.*?)"$/ do |text|
  click_link text
end