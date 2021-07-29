 @Login @Regression
 Feature: Validate Techfios Login Functionality

Background: 
 Given User is on the Techfios login page 
@scenario1 @Smoke
Scenario: 1 User should be able to login with valid credentials
When User enters username as "demo@techfios.com"      
Given User enters password as "abc123"  
When User clicks on signin button  
Then User should land on Dashboard page
@scenario2 @Smoke
Scenario: 2 User should be able to login with valid credentials
When User enters username as "demo2@techfios.com"      
Given User enters password as "abc123"  
When User clicks on signin button  
Then User should land on Dashboard page
@scenario3 @Smoke
 Scenario: 3 User should be able to login with valid credentials
When User enters username as "demo@techfios.com"      
Given User enters password as "abc1234"  
When User clicks on signin button  
Then User should land on Dashboard page