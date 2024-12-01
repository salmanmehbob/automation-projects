Feature: Login with VPClient Portal

  Background:
    Given User Setup Web Browser Session

  @VP
  Scenario: Successfully Logged In to VPClient Portal

    When User Navigates to "VPClient Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPClientLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPClientLogin" Page
    And User Click on "Login" Button on "VPClientLogin" Page
    Then User Validates "AtCloseTitle" Title






