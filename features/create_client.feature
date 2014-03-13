Feature: Create an exercise
  As a user
  I want to be able to add an client to the "applicants" table


Scenario: The user adds an exercise to an empty table
  Given the following user:
    | email | joe@example.com |
  When I go to the homepage
  And I follow "Sign In"
  And I fill in "joe@example.com" for "Email"
  And I fill in "password" for "Password"
  And I press "Sign in"
  And I press "Start Tracking"
  Then I should go to the clients page
  Then I should see "ADD CLIENT"
  And I fill in "sharon" for "Client Name:"
  And I fill in "03-12-2014" for "Client Contact:"
  And I fill in "03-24-2014" for "Task Date:"
  And I fill in "Design Comps" for "Task:"
  And I fill in "02/24/14" for "Billed Date:"
  And I fill in "Flat Fee" for "Payment Type (flat fee, weekly, monthly, yearly):"
  And I fill in "$2000" for "Amount:"
  And I fill in "02/24/14" for "Appointment Date:"
  And I fill in "10:00AM" for "Appointment Time:"
  And I fill in "Sign Contract" for "Appointment Notes:"
  And I press "Create Client"