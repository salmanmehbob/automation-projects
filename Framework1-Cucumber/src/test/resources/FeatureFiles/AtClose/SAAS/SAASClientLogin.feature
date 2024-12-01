Feature: Login with SAASClient Portal

  Background:
    Given User Setup Web Browser Session

  @Login
  Scenario: Successfully Logged In to SAASClient Portal

    When User Navigates to "SAASClient Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "SAASClientLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "SAASClientLogin" Page
    And User Click on "Login" Button on "SAASClientLogin" Page
    Then User Validates "AtCloseTitle" Title






