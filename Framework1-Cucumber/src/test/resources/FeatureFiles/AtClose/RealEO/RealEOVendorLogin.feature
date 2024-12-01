Feature: Login with RealEOVendor Portal

  Background:
    Given User Setup Web Browser Session

  @RealEO
  Scenario: Successfully Logged In to RealEOVendor Portal

    When User Navigates to "RealEOVendor Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOVendorLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOVendorLogin" Page
    And User Click on "Login" Button on "RealEOVendorLogin" Page
    Then User Validates "AtCloseTitle" Title






