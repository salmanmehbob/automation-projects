Feature: Login with RealEO Portal

  Background:
    Given User Setup Web Browser Session

  @Login
  Scenario: Successfully Logged In to RealEO Portal

    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page
    Then User Validates "AtCloseTitle" Title
