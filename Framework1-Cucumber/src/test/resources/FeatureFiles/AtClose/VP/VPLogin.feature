Feature: Login with VP Portal

  Background:
    Given User Setup Web Browser Session

  @VP
  Scenario: Successfully Logged In to VP Portal

    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page
    Then User Validates "AtCloseTitle" Title
