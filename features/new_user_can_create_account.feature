Feature: New User can create account
  As a new user
  I should be able to create an account
  In order to use the site
  
Scenario: New User can access sign up page via the sign in page
  When I am on the sign in page
  And I follow the sign up link
  Then I should be on the sign up page

Scenario: New User can create account and get signed in
  When I am on the sign up page
  And I submit the correct new user details
  Then I should be on the root page
  And I should be signed in

Scenario Outline: Account is not created <with or without an> <data type>
  When I am on the sign up page
  And I submit the new user details <with or without an> <data type>
  Then I should not be signed in
  And I should see the invalid <invalid data type> message
  
  Examples:
  |with or without an|data type|invalid data type|
  |without an|email|email|
  |with an|invalid email|email|
  |without a|password|password|
  |without a|password_confirmation|password confirmation|

Scenario: Account is not created when password and password confirmation do not match
  When I am on the sign up page
  And I submit the new user details with a password that does not match the password confirmation
  Then I should not be signed in
  And I should see the invalid password confirmation message
