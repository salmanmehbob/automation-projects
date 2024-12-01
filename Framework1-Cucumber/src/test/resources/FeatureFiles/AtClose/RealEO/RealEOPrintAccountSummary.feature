Feature: RealEOPrintAccountSummary

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page
    Then User Validates "AtCloseTitle" Title
@RealEO
  Scenario: User Print Account Summary
    When User Enters "TestValue" on "OrderNoSearch" Field on "RealEOPrintAccountSummary" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "AccountSummary" Button on "RealEOPrintAccountSummary" Page
    And User Wait for Element "AccountSummaryScreen" to be visible on "RealEOPrintAccountSummary" Page
    And User Click on "DisburseCheck" Button on "RealEOPrintAccountSummary" Page
    And user wait for 3000 seconds
    And User Click on "PrintCheck" Button on "RealEOPrintAccountSummary" Page
    And User switch to Default from iframe
    Then user wait for 9000 seconds