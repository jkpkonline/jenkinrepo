Feature: annotation 

#This is how background can be used to eliminate duplicate steps
Background: 
   Given User navigates to Heroku app

#Scenario  
Scenario: 
   When User go to main menu
   When User go to the RFP screen
   When User go to main menu
   When User go to the client dashboard screen
   When User go to the client's assets dashboard screen
   When User go to the client's sales dashboard screen   
   Then Closing the app
   
#Scenario  
Scenario: 
   When User go to main menu
   When User go to the opportunity screen
   When User go to main menu
   When User go to the thought leadership screen
   When User go to main menu
   When User go to the STFW screen
   Then Closing the app

