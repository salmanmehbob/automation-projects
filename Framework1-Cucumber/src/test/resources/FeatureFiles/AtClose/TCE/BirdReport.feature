  Feature: BirdReport Generation

  Background:
    Given User Setup Web Browser Session
    ##TCE-UAT
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

     ##SAAS-UAT
#    When User Navigates to "VisionAtClose Application" URL
#    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
#    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
#    And User Click on "Login" Button on "VisionAtCloseLogin" Page
#    Then User Validates "AtCloseTitle" Title

    ##RealEO-UAT
#    When User Navigates to "RealEO Application" URL
#    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
#    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
#    And User Click on "Login" Button on "RealEOLogin" Page
#    Then User Validates "AtCloseTitle" Title


    ##VP-UAT
#    When User Navigates to "VP Application" URL
#    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
#    And User Click on "Next" Button on "VPLogin" Page
#    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
#    And User Click on "Login" Button on "VPLogin" Page


    @Smoke
  Scenario: User Create Bird Report

    When User Click on "Report" Button on "BirdReport" Page
    And User Click on "Client" Button on "BirdReport" Page
    And User Click on "AdditionalFee" Button on "BirdReport" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "ShowReport" Button on "BirdReport" Page
    And User switch to iframe "FrameBirdReport" on "BirdReport" Page
    And User Wait for Element "Additional Fee" to be visible on "BirdReport" Page
    Then User Assert "AssertValue" on Field "Additional Fee" on "BirdReport" Page






