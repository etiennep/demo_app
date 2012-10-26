Feature: User management feature.

  Scenario: display the users page
    Given I am on the users page
    Then the page should have the text "Listing users"
    And the page should have a "New User" link

  Scenario: navigate to the new user page from the users page
    Given I am on the users page
    When I click the "New User" link
    Then I should be taken to the user creation page
    And the page should have the text "New user"

  Scenario: create a new user
    Given I am on the user creation page page
    When I fill in the "Name" field with "someuser"
    And I fill in the "Email" field with "someuser@example.com"
    And click on the "Create User" button
    Then the page should have the text "User was successfully created."
    And the page should have the text "Name: someuser"
    When I am on the users page
    And the page should have the text "someuser"
    And the page should have the text "someuser@example.com"


