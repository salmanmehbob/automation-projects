Feature: VendorNote Scenarios

  Background:
    Given User Setup Web Browser Session
      When User Navigates to "AtCloseVendor Application" URL
      And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseVendorLogin" Page
      And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseVendorLogin" Page
      And User Click on "Login" Button on "AtCloseClientLogin" Page
      Then User Validates "AtCloseTitle" Title

  Scenario: User Search an Order
      When User Click on "VendorOrder" Button on "VendorNote" Page
      And User Click on "MyOrder" Button on "VendorNote" Page
      And user wait for 2000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "VendorOrderSearch" Button on "VendorNote" Page
      And User Click on "VendorNotes" Button on "VendorNote" Page
      And User Click on "AddVendorNote" Button on "VendorNote" Page
      And User Enters "NoteText" on "TextField" Field on "VendorNote" Page
      And User Click on "SaveVendorNote" Button on "VendorNote" Page
      And user wait for 3000 seconds
      And User Click on "VendorAttachment" Button on "VendorNote" Page
      And User Click on "AddVendorAttachment" Button on "VendorNote" Page
      And User Select "OrderAttachmentType" on "OrderAttachmentDrop" Field on "VendorNote" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "VendorNote" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "VendorNote" Page
      And User switch to Default from iframe
      And user wait for 2000 seconds
      Then User Validates "AtCloseTitle" Title


















