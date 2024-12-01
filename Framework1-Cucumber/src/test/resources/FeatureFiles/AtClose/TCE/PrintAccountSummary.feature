Feature: PrintAccountSummary

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

@Smoke
  Scenario: User Print Account Summary
    When User Enters "TestValue" on "OrderNoSearch" Field on "PrintAccountSummary" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "AccountSummary" Button on "PrintAccountSummary" Page
    And User Wait for Element "AccountSummaryScreen" to be visible on "PrintAccountSummary" Page
    And User Click on "DisburseCheck" Button on "PrintAccountSummary" Page
    And user wait for 3000 seconds
    And User Click on "PrintCheck" Button on "PrintAccountSummary" Page
    And User switch to Default from iframe
    Then user wait for 10000 seconds