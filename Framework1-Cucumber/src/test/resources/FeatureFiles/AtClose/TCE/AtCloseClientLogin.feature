Feature: Login with AtCloseClient Portal

  Background:
    Given User Setup Web Browser Session

  @Smoke
  Scenario: Successfully Logged In to AtCLoseClient Portal

    When User Navigates to "AtCloseClient Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseClientLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseClientLogin" Page
    And User Click on "Login" Button on "AtCloseClientLogin" Page
    Then User Validates "AtCloseTitle" Title






