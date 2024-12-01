Feature: VPVendorNote Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VPVendor Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPVendorLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPVendorLogin" Page
    And User Click on "Login" Button on "SAASClientLogin" Page
    Then User Validates "AtCloseTitle" Title

    @VP
  Scenario: User Search an Order
      When User Click on "VendorOrder" Button on "VPVendorNote" Page
      And User Click on "MyOrder" Button on "VPVendorNote" Page
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "VendorOrderSearch" Button on "VPVendorNote" Page
      And user wait for 2000 seconds
      And User Click on "VendorNotes" Button on "VPVendorNote" Page
      And User Click on "AddVendorNote" Button on "VPVendorNote" Page
      And User Enters "NoteText" on "TextField" Field on "VPVendorNote" Page
      And User Click on "SaveVendorNote" Button on "VPVendorNote" Page
      And user wait for 3000 seconds
      And User Click on "VendorAttachment" Button on "VPVendorNote" Page
      And User Click on "AddVendorAttachment" Button on "VPVendorNote" Page
      And User Select "OrderAttachmentType" on "OrderAttachmentDrop" Field on "VPVendorNote" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "VPVendorNote" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "VPVendorNote" Page
      And User switch to Default from iframe
      Then User Validates "AtCloseTitle" Title


















