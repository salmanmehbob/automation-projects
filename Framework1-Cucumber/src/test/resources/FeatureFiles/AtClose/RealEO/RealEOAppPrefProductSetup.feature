Feature: RealEOAppPrefProductSetup Search

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page
    Then User Validates "AtCloseTitle" Title
@RealEO
  Scenario: User Search App and Product
    When User Click on "Maintenance" Button on "RealEOAppPrefProductSetup" Page
    And User Click on "SystemSetup" Button on "RealEOAppPrefProductSetup" Page
    And User Click on "AppPreference" Button on "RealEOAppPrefProductSetup" Page
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
  ##Temp
    And User Click on "SearchClient" Button on "RealEOAppPrefProductSetup" Page
  ##Basic
#    And User Enters "ClientNo" on "ClientNoTextbox" Field on "RealEOAppPrefProductSetup" Page
#    And User Wait for Element "ApplicationPreferences" to be visible on "RealEOAppPrefProductSetup" Page
#    And User Click on "ClientSearch" Button on "RealEOAppPrefProductSetup" Page
    And User Wait for Element "ApplicationPreferences" to be visible on "RealEOAppPrefProductSetup" Page
    Then User Assert "AssertValue" on Field "ApplicationPreferences" on "RealEOAppPrefProductSetup" Page
    And User switch to Default from iframe
    And User Click on "MaintenanceProduct" Button on "RealEOAppPrefProductSetup" Page
    And User Click on "ProductSetup" Button on "RealEOAppPrefProductSetup" Page
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And user wait for 4000 seconds
    And User Select "ProductCategoryValue" on "ProductCategory" Field on "RealEOAppPrefProductSetup" Page
    And User Click on "ProductSearch" Button on "RealEOAppPrefProductSetup" Page
    And User Wait for Element "SearchResults" to be visible on "RealEOAppPrefProductSetup" Page
    And User Click on "ProductSearchClick" Button on "RealEOAppPrefProductSetup" Page
    And User Wait for Element "ProductInformation" to be visible on "RealEOAppPrefProductSetup" Page
    Then User Assert "ProductAssertValue" on Field "ProductName" on "RealEOAppPrefProductSetup" Page
    And user wait for 3000 seconds





