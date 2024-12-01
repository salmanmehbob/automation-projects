Feature: Login with QA Portal

  Background:
    Given User Setup Web Browser Session

  @Login
  Scenario: Successfully Logged In to QA Portal

    When User Navigates to "QA Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "QALogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "QALogin" Page
    And User Click on "Login" Button on "QALogin" Page
    Then User Validates "QAAtCloseTitle" Title
