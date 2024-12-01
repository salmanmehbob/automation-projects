Feature: RealEOSSRReport Generation

  Background:
    Given User Setup Web Browser Session
    ##RealEO_UAT
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page
    Then User Validates "AtCloseTitle" Title
  @RealEO
  Scenario: User Create SSRS Report

    When User Click on "Report" Button on "RealEOSSRReport" Page
    And User Click on "Recording" Button on "RealEOSSRReport" Page
    And User Click on "AOMLReport" Button on "RealEOSSRReport" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "SSRReport" Button on "RealEOSSRReport" Page
    And User Wait for Element "SSRSLoader" to be visible on "RealEOSSRReport" Page
    Then User Download File: "AOMLRDashboardReport" with Robot Class
    And User Assert "AOM\LR Dashboard Report" text from "AOMLRDashboardReport" file

