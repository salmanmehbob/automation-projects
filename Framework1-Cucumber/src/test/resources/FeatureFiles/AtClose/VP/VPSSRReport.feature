Feature: VPSSRReport Generation

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page
  @VP
  Scenario: User Create SSRS Report

    When User Click on "Report" Button on "VPSSRReport" Page
    And User Click on "Recording" Button on "VPSSRReport" Page
    And User Click on "AOMLReport" Button on "VPSSRReport" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "SSRReport" Button on "VPSSRReport" Page
    And User Wait for Element "SSRSLoader" to be visible on "VPSSRReport" Page
    Then User Download File: "AOMLRDashboardReport" with Robot Class
    And User Assert "AOM\LR Dashboard Report" text from "AOMLRDashboardReport" file

