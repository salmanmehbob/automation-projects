Feature: AppPrefProductSetup Search

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

@Smoke
  Scenario: User Search App and Product
    When User Click on "Maintenance" Button on "AppPrefProductSetup" Page
    And User Click on "SystemSetup" Button on "AppPrefProductSetup" Page
    And User Click on "AppPreference" Button on "AppPrefProductSetup" Page
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Enters "ClientNo" on "ClientNoTextbox" Field on "AppPrefProductSetup" Page
    And User Wait for Element "ApplicationPreferences" to be visible on "AppPrefProductSetup" Page
    And User Click on "ClientSearch" Button on "AppPrefProductSetup" Page
    And User Wait for Element "ApplicationPreferences" to be visible on "AppPrefProductSetup" Page
    Then User Assert "AssertValue" on Field "ApplicationPreferences" on "AppPrefProductSetup" Page
    And User switch to Default from iframe
#    And User Click on "Maintenance" Button on "AppPrefProductSetup" Page
#    And User Click on "SystemSetup" Button on "AppPrefProductSetup" Page
    And User Click on "MaintenanceProduct" Button on "AppPrefProductSetup" Page
    And User Click on "ProductSetup" Button on "AppPrefProductSetup" Page
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Select "ProductCategoryValue" on "ProductCategory" Field on "AppPrefProductSetup" Page
    And User Click on "ProductSearch" Button on "AppPrefProductSetup" Page
    And User Wait for Element "SearchResults" to be visible on "AppPrefProductSetup" Page
    And User Click on "ProductSearchClick" Button on "AppPrefProductSetup" Page
    And User Wait for Element "AutomationProduct" to be visible on "AppPrefProductSetup" Page
    Then User Assert "ProductAssertValue" on Field "AutomationProduct" on "AppPrefProductSetup" Page
    And user wait for 3000 seconds




