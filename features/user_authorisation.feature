Feature: User Authorisation
  As a user
  I should have to be authorised on the site
  In order to do anything meaningful
  
Scenario: Signed out user should be prompted to sign in
  Given a user exists
  And I am signed out
  When I go to the root page
  Then I should see the sign in prompt
  And I should not see the sign out prompt

Scenario: Signed in user should be prompted to sign out
  Given a user exists
  And I am signed in as the user
  When I go to the root page
  Then I should not see the sign in prompt
  And I should see the sign out prompt
  
Scenario: A signed out user should be able to see the sign in page
  Given I am signed out
  And I am on the root page
  When I follow the sign in prompt
  Then I should be on the sign in page
  
Scenario: A user should be able to sign in with the appropriate password
  Given a user exists
  And I am signed out
  And I am on the sign in page
  And I submit the correct sign in details for the user
  Then I should be signed in
  
Scenario: A user should not be able to sign in without the appropriate password
  Given a user exists
  And I am signed out
  And I am on the sign in page
  And I submit an incorrect password for the user
  Then I should not be signed in
  
Scenario: A user should not be able to sign in without the appropriate email
  Given a user exists
  And I am signed out
  And I am on the sign in page
  And I submit an incorrect email for the user
  Then I should not be signed in
  
Scenario: A user who is denied sign in on password should remain on the sign in page and be given a meaningful error message
  Given a user exists
  And I am signed out
  And I am on the sign in page
  And I submit an incorrect password for the user
  Then I should see "Invalid Email/Password combination."

Scenario: A user who is denied sign in on email should remain on the sign in page and be given a meaningful error message
  Given a user exists
  And I am signed out
  And I am on the sign in page
  And I submit an incorrect email for the user
  Then I should see "Invalid Email/Password combination."
  
Scenario: A user should be able to sign out
  Given a user exists
  And I am signed in as the user
  And I go to the root page
  And I follow the sign out prompt
  Then I should not be signed in
  And I should be on the root page
  
Scenario: The default auth logic message should not appear when a user tries to log in without any data
  Given a user exists
  And I am signed out
  And I am on the sign in page
  And I press the sign in button
  Then I should not see the default authlogic message
  