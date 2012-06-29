Feature:
    As a user
    In order to see who else is playing
    I want to be able to see a players screen
    
    Scenario: View Players tab
        Given I am on the "Players" tab
        Then I should see a navigation bar with title "Players"
        And I should see a table view with 3 cells
        And I should see a table view with 3 visible cells
        And I should see a table view with 0 groups 
        
    
    Scenario: Adding a Player       
        Given I go to the "Players" tab
        When I tap the right navigation bar button
        Then I should see a navigation bar with title "Add Player"
     
        When I fill in table view text field "Player Name Field" with "John Doe"
        And I tap the right navigation bar button
        Then the last table view cell should read "John Doe, Chess"