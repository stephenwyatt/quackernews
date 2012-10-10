Feature: New Post

Scenario: Create new post successfully

Given I am on the home page
And I click "New"
When I fill in "Subject" with "Foo"
And I click button "create"
Then I should see "successfully created post"
