Feature: Login with RealEOClient Portal

  Background:
    Given User Setup Web Browser Session

  @RealEO
  Scenario: Successfully Logged In to RealEOClient Portal

    When User Navigates to "RealEOClient Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOClientLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOClientLogin" Page
    And User Click on "Login" Button on "RealEOClientLogin" Page
    Then User Validates "AtCloseTitle" Title






