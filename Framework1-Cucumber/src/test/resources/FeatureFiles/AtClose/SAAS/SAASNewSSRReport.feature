Feature: SAASNewSSRReport Generation

  Background:
    Given User Setup Web Browser Session
    ##SAAS_UAT
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Create SSRS Report


    When User Click on "Report" Button on "SAASNewSSRReport" Page
    And User Click on "Recording" Button on "SAASNewSSRReport" Page
    And User Click on "eRecordingReport" Button on "SAASNewSSRReport" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "SSRReport" Button on "SAASNewSSRReport" Page
    And User Wait for Element "SSRSLoader" to be visible on "SAASNewSSRReport" Page
    Then User Download File: "e-RecordingDashboardReport" with Robot Class
    And User Assert "e-Recording Billing" text from "ERecordingBilling" file

