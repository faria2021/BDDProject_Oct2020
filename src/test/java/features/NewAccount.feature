@NewAccoount @Regression
Feature: Techfios bank and cash New Account functionality

@NewAccScenario1
Scenario Outline:
User should be able to login with valid credentials and Add New Account
When User enters the "<userName>" and "<password>"
And User clicks on the log in button
Then User should be able to see the DashBoard Page
Then User clicks on Bank and Cash button
Then User clicks on New Account
#Then user should be able to see the Add new account page
Then User fill up the form by entering"<accountTitle>" and "<description>" and "<initialBalance>" and "<accountNumber>" and"<contactPerson>"
Then User clicks on Submit button

Examples:

|userName |password|accountTitle|description|initialBalance|accountNumber|contactPerson|
|demo@techfios.com|abc123|Savings Account|New business account|100000|9876543211|John Doe|