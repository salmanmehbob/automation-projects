Feature: Login with VPVendor Portal

  Background:
    Given User Setup Web Browser Session

  @VP
  Scenario: Successfully Logged In to VPVendor Portal

    When User Navigates to "VPVendor Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPVendorLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPVendorLogin" Page
    And User Click on "Login" Button on "SAASClientLogin" Page
    Then User Validates "AtCloseTitle" Title






