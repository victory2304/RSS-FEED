Feature: RSS Home landing
  In order to see RSS FEEDS
  A USER
  Should go to home page

  Scenario: View Home page of RSS Feeds
    Given I am on the homepage
    When I should see "Ready to RSS FEED platform"
    Then I should see "Sign up"
    And I should see "Login"