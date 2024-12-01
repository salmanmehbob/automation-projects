Feature: Login with AtClose Application

  Background:
    Given User Setup Web Browser Session

  @Smoke
  Scenario: Successfully Logged In to AtCLose Application

    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title






