Feature: ClientVendorSearch

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  @Smoke
  Scenario: User Search Client and Vendor
    When User Click on "Client" Button on "ClientVendorSearch" Page
    And User Click on "ClientSetup" Button on "ClientVendorSearch" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Enters "ClientNo" on "ClientNoTextBox" Field on "ClientVendorSearch" Page
    And User Wait for Element "AutomationClient" to be visible on "ClientVendorSearch" Page
    And User Click on "ProductSetup" Button on "ClientVendorSearch" Page
    And User Wait for Element "AutomationClient" to be visible on "ClientVendorSearch" Page
    Then User Assert "AssertValue" on Field "ProductDetails" on "ClientVendorSearch" Page
    And user wait for 3000 seconds
    And User switch to Default from iframe
    And User Click on "Vendor" Button on "ClientVendorSearch" Page
    And User Click on "VendorSetup" Button on "ClientVendorSearch" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Enters "VendorNo" on "VendorNoTextBox" Field on "ClientVendorSearch" Page
    And User Wait for Element "AutomationVendor" to be visible on "ClientVendorSearch" Page
    And user wait for 3000 seconds
    And User switch to Default from iframe



