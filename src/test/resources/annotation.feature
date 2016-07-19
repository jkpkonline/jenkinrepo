Feature: annotation 
#This is how background can be used to eliminate duplicate steps 

Background: 
   Given User navigates to Facebook

#Scenario with AND 
Scenario: 
   When I enter username as "TOM"
   And I enter password as "JERRY" 
   Then Login should fail 

