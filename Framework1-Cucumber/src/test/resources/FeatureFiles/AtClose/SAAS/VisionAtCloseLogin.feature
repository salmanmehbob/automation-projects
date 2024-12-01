Feature: Login with VisionAtClose Portal

  Background:
    Given User Setup Web Browser Session

  @Login
  Scenario: Successfully Logged In to VisionAtClose Portal

    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
#    Then User Validates "AtCloseTitle" Title
