Feature: VPShared Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page

@VP
  Scenario: User Add Shared Items
    And User Enters "TestValueShared" on "OrderNoSearch" Field on "VPShared" Page
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "Transactions" Button on "VPShared" Page
    And User Click on "CloseTitle" Button on "VPShared" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "Share" Button on "VPShared" Page
    And User Click on "Notes" Button on "VPShared" Page
    And User Click on "AddNotes" Button on "VPShared" Page
    And User Enters "NoteValue" on "NoteTextbox" Field on "VPShared" Page
    And User Click on "NoteSave" Button on "VPShared" Page
    And user wait for 3000 seconds
    And User Click on "Messages" Button on "VPShared" Page
    And User Click on "EmailFax" Button on "VPShared" Page
    And User switch tab 3
    And user wait for 2000 seconds
    And User Enters "SendToValue" on "SendToTextbox" Field on "VPShared" Page
    And user wait for 2000 seconds
    And User SimpleClick on "SendEmail" Button on "VPShared" Page
    When User Clicks on "Ok" button on AlertBox
    And user wait for 2000 seconds
    And User switch tab 2
    And User Click on "Messages" Button on "VPShared" Page
    And user wait for 3000 seconds
    And User Click on "Attachments" Button on "VPShared" Page
    And User Click on "AddAttachments" Button on "VPShared" Page
    And User Select "AttachTypeValue" on "AttachType" Field on "VPShared" Page
    And user wait for 3000 seconds
    And User Upload "Check.pdf" on "UploadDoc" Field on "VPShared" Page
    And user wait for 6000 seconds
    And User Click on "SaveAttachments" Button on "VPShared" Page
    And user wait for 3000 seconds

