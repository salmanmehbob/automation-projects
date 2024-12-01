Feature: VPPrintAccountSummary

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page
@VP
  Scenario: User Print Account Summary
    When User Enters "TestValue" on "OrderNoSearch" Field on "VPPrintAccountSummary" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "AccountSummary" Button on "VPPrintAccountSummary" Page
    And User Wait for Element "AccountSummaryScreen" to be visible on "VPPrintAccountSummary" Page
    And User Click on "DisburseCheck" Button on "VPPrintAccountSummary" Page
    And user wait for 3000 seconds
    And User Click on "PrintCheck" Button on "VPPrintAccountSummary" Page
    And User switch to Default from iframe
    Then user wait for 9000 seconds