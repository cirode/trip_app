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
  And I should see "<message>"
  
  Examples:
  |with or without an|data type|message|
  |without an|email|Email should look like an email address|
  |with an|invalid email|Email should look like an email address|
  |without a|password|Password is too short (minimum is 4 characters)|
  |without a|password_confirmation|doesn't match confirmation|

Scenario: Account is not created when password and password confirmation do not match
  When I am on the sign up page
  And I submit the new user details with a password that does not match the password confirmation
  Then I should not be signed in
  And I should see "Password doesn't match confirmation"
