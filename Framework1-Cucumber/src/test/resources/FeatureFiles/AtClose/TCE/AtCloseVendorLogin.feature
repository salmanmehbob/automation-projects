Feature: Login with AtCloseVendor Portal

  Background:
    Given User Setup Web Browser Session

  @Login
  Scenario: Successfully Logged In to AtCloseVendor Portal

    When User Navigates to "AtCloseVendor Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseVendorLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseVendorLogin" Page
    And User Click on "Login" Button on "AtCloseClientLogin" Page
    Then User Validates "AtCloseTitle" Title






