Feature: RealEOVendorNote Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "RealEOVendor Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOVendorLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOVendorLogin" Page
    And User Click on "Login" Button on "RealEOVendorLogin" Page
    Then User Validates "AtCloseTitle" Title
@RealEO
  Scenario: User Search an Order
      When User Click on "VendorOrder" Button on "RealEOVendorNote" Page
      And User Click on "MyOrder" Button on "RealEOVendorNote" Page
      And user wait for 2000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "VendorOrderSearch" Button on "RealEOVendorNote" Page
      And User Click on "VendorNotes" Button on "RealEOVendorNote" Page
      And User Click on "AddVendorNote" Button on "RealEOVendorNote" Page
      And User Enters "NoteText" on "TextField" Field on "RealEOVendorNote" Page
      And User Click on "SaveVendorNote" Button on "RealEOVendorNote" Page
      And user wait for 3000 seconds
      And User Click on "VendorAttachment" Button on "RealEOVendorNote" Page
      And User Click on "AddVendorAttachment" Button on "RealEOVendorNote" Page
      And User Select "OrderAttachmentType" on "OrderAttachmentDrop" Field on "RealEOVendorNote" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "RealEOVendorNote" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "RealEOVendorNote" Page
      And User switch to Default from iframe
      And user wait for 2000 seconds
      Then User Validates "AtCloseTitle" Title


















