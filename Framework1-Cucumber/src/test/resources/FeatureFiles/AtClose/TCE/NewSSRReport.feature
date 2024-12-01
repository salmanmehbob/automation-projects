Feature: NewSSRReport Generation

  Background:
    Given User Setup Web Browser Session
    ##TCE_UAT
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

 @Smoke
  Scenario: User Create SSRS Report


    When User Click on "Report" Button on "NewSSRReport" Page
    And User Click on "Recording" Button on "NewSSRReport" Page
    And User Click on "AOMLReport" Button on "NewSSRReport" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "SSRReport" Button on "NewSSRReport" Page
    And User Wait for Element "SSRSLoader" to be visible on "NewSSRReport" Page
    Then User Download File: "AOMLRDashboardReport" with Robot Class
    And User Assert "AOM\LR Dashboard Report" text from "AOMLRDashboardReport" file


