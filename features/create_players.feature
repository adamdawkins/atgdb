Feature: Create A Player

As a football fan
I want to be able to add new players to atdgb
So that the players I love will be listed as all time greats.

Scenario: Create Unique Player
  Given the following player records
    | first_name | last_name |
    | Christiano | Ronaldo   |
    |            | Pele      |
    | Alan       | Smith I   |
    | Alan       | Smith II  |
  And I am on the new player page
  When I fill in "First name" with "Alan" 
  And I fill in "Last name" with "Shearer"
  And I press "Create"
  Then I should see "Alan Shearer"
  And I should see "Player created successfully"

Scenario: Create A Player With The Same Name As An Existing Player
Scenario: A player with the same name has already been created
Given the following player records
  | first_name | last_name |
  | Christiano | Ronaldo   |
  |            | Pele      |
  | Alan       | Smith I   |
  | Alan       | Smith II  |
  And I am on the new player page
  When I fill in "First name" with "Alan" 
  And I fill in "Last name" with "Smith"
  And I press "Create"
  Then I should see "Did you mean?"
  And I should see "Alan Smith I"
  And I should see "Alan Smith II"