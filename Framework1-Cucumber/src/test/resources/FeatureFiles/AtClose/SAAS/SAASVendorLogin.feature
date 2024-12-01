Feature: Login with SAASVendor Portal

  Background:
    Given User Setup Web Browser Session

  @Login
  Scenario: Successfully Logged In to SAASVendor Portal

    When User Navigates to "SAASVendor Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "SAASVendorLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "SAASVendorLogin" Page
    And User Click on "Login" Button on "SAASClientLogin" Page
    Then User Validates "AtCloseTitle" Title






