 @OtherLogin
 Feature: Validate Login
 
 Background:
 Given User is on the Techfios login page
 
 Scenario Outline:Login different way
   When User enters "<userName>" and "<password>"
   And User clicks on signin button
   Then User should land on Dashboard page
   
   Examples:
   |userName   |password|
   |demo@techfios.com|abc123|
   |demo2@techfios.com|abc123|
   |demo@techfios.com|abc124|
   |demo2@techfios.com|abc124|
   