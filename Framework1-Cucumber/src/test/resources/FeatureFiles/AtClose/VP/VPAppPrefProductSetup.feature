Feature: VPAppPrefProductSetup Search

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page
    Then User Validates "AtCloseTitle" Title
@VP
  Scenario: User Search App and Product
    When User Click on "Maintenance" Button on "VPAppPrefProductSetup" Page
    And User Click on "SystemSetup" Button on "VPAppPrefProductSetup" Page
    And User Click on "AppPreference" Button on "VPAppPrefProductSetup" Page
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "SearchClient" Button on "VPAppPrefProductSetup" Page
#    And User Enters "ClientNo" on "ClientNoTextbox" Field on "AppPrefProductSetup" Page
#    And User Wait for Element "ApplicationPreferences" to be visible on "AppPrefProductSetup" Page
#    And User Click on "ClientSearch" Button on "AppPrefProductSetup" Page
    And User Wait for Element "ApplicationPreferences" to be visible on "VPAppPrefProductSetup" Page
    Then User Assert "AssertValue" on Field "ApplicationPreferences" on "VPAppPrefProductSetup" Page
    And User switch to Default from iframe
    And User Click on "MaintenanceProduct" Button on "VPAppPrefProductSetup" Page
    And User Click on "ProductSetup" Button on "VPAppPrefProductSetup" Page
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Select "ProductCategoryValue" on "ProductCategory" Field on "VPAppPrefProductSetup" Page
    And User Click on "ProductSearch" Button on "VPAppPrefProductSetup" Page
    And User Wait for Element "SearchResults" to be visible on "VPAppPrefProductSetup" Page
    And User Click on "ProductSearchClick" Button on "VPAppPrefProductSetup" Page
    And User Wait for Element "ProductInformation" to be visible on "VPAppPrefProductSetup" Page
    Then User Assert "ProductAssertValue" on Field "ProductInformation" on "VPAppPrefProductSetup" Page
    And user wait for 3000 seconds





