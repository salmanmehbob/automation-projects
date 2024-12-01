Feature: SAASVendorNote Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "SAASVendor Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "SAASVendorLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "SAASVendorLogin" Page
    And User Click on "Login" Button on "SAASClientLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Search an Order
      When User Click on "VendorOrder" Button on "SAASVendorNote" Page
      And User Click on "MyOrder" Button on "SAASVendorNote" Page
      And user wait for 2000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "VendorOrderSearch" Button on "SAASVendorNote" Page
      And User switch to Default from iframe
      And user wait for 2000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "VendorNotes" Button on "SAASVendorNote" Page
      And User Click on "AddVendorNote" Button on "SAASVendorNote" Page
      And User Enters "NoteText" on "TextField" Field on "SAASVendorNote" Page
      And User Click on "SaveVendorNote" Button on "SAASVendorNote" Page
      And user wait for 3000 seconds
      And User Click on "VendorAttachment" Button on "SAASVendorNote" Page
      And User Click on "AddVendorAttachment" Button on "SAASVendorNote" Page
      And User Select "OrderAttachmentType" on "OrderAttachmentDrop" Field on "SAASVendorNote" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "SAASVendorNote" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "SAASVendorNote" Page
      And User switch to Default from iframe
      And user wait for 2000 seconds
      Then User Validates "AtCloseTitle" Title


















