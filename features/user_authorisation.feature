Feature: User Authorisation
  As a user
  I should have to be authorised on the site
  In order to do anything meaningful
  
Scenario: Logged out user should be prompted to log in
  Given a user exists
  And I am logged out
  When I go to the root page
  Then I should see the log in prompt
  And I should not see the log out prompt

Scenario: Logged in user should be prompted to log out
  Given a user exists
  And I am logged in as the user
  When I go to the root page
  Then I should not see the log in prompt
  And I should see the log out prompt
  
Scenario: A logged out user should be able to see the login page
  Given I am logged out
  And I am on the root page
  When I follow the log in prompt
  Then I should be on the login page
  
Scenario: A user should be able to log in with the appropriate password
  Given a user with password exists
  And I am logged out
  And I am on the login page
  And I submit the correct login details
  Then I should be logged in
  
Scenario: A user should not be able to log in without the appropriate password
  Given a user with password exists
  And I am logged out
  And I am on the login page
  And I submit the incorrect password
  Then I should not be logged in
  
Scenario: A user should not be able to log in without the appropriate username
  Given a user with password exists
  And I am logged out
  And I am on the login page
  And I submit the incorrect username
  Then I should not be logged in
  
Scenario: A user who is denied login on password should remain on the login page and be given a meaningful error message
  Given a user with password exists
  And I am logged out
  And I am on the login page
  And I submit the incorrect password
  Then I should see "Invalid username and password combination" in the form errors

Scenario: A user who is denied login on username should remain on the login page and be given a meaningful error message
  Given a user with password exists
  And I am logged out
  And I am on the login page
  And I submit the incorrect password
  Then I should see "Invalid username and password combination" in the form errors
  