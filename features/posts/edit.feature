Feature: New Post

Scenario: Edit a post

Given I have a post called "foo"
And I am on the home page
And I should not see "Bar"
And I click on post "foo"
When I fill in "Subject" with "Bar"
And I click button "update"
Then I should see "successfully updated post"
And I should see "Bar"