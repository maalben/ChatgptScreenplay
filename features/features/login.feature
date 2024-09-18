Feature: Login to Applitools Hackathon

  Scenario: User logs in with valid credentials
    Given the user opens the login page
    When the user logs in with valid credentials
    Then the user should see the main dashboard