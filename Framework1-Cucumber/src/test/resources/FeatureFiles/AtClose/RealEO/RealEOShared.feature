Feature: RealEOShared Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page
    Then User Validates "AtCloseTitle" Title

@RealEO
  Scenario: User Add Shared Items
    And User Enters "TestValueShared" on "OrderNoSearch" Field on "RealEOShared" Page
    And User Click on "OrderSearch" Button on "RealEOShared" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "Transactions" Button on "RealEOShared" Page
    And User Click on "CloseTitle" Button on "RealEOShared" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "Share" Button on "RealEOShared" Page
    And User Click on "Notes" Button on "RealEOShared" Page
    And User Click on "AddNotes" Button on "RealEOShared" Page
    And User Enters "NoteValue" on "NoteTextbox" Field on "RealEOShared" Page
    And User Click on "NoteSave" Button on "RealEOShared" Page
    And user wait for 3000 seconds
    And User Click on "Messages" Button on "RealEOShared" Page
    And User Click on "EmailFax" Button on "RealEOShared" Page
    And User switch tab 3
    And user wait for 2000 seconds
    And User Enters "SendToValue" on "SendToTextbox" Field on "RealEOShared" Page
    And user wait for 2000 seconds
    And User SimpleClick on "SendEmail" Button on "RealEOShared" Page
    When User Clicks on "Ok" button on AlertBox
    And user wait for 2000 seconds
    And User switch tab 2
    And User Click on "Messages" Button on "RealEOShared" Page
    And user wait for 3000 seconds
    And User Click on "Attachments" Button on "RealEOShared" Page
    And User Click on "AddAttachments" Button on "RealEOShared" Page
    And User Select "AttachTypeValue" on "AttachType" Field on "RealEOShared" Page
    And user wait for 3000 seconds
    And User Upload "Check.pdf" on "UploadDoc" Field on "RealEOShared" Page
    And user wait for 2000 seconds
    And User Wait for Element "uploadLoader" to be visible on "RealEOShared" Page
    And User Click on "SaveAttachments" Button on "RealEOShared" Page
    And user wait for 3000 seconds

