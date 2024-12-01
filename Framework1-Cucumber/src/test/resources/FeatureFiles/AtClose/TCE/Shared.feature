Feature: Shared Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

@Smoke
  Scenario: User Add Shared Items
    And User Enters "TestValueShared" on "OrderNoSearch" Field on "Shared" Page
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "Transactions" Button on "TitleEntry" Page
    And User Click on "CloseTitle" Button on "OrderClosing" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "Share" Button on "Shared" Page
    And User Click on "Notes" Button on "Shared" Page
    And User Click on "AddNotes" Button on "Shared" Page
    And User Enters "NoteValue" on "NoteTextbox" Field on "Shared" Page
    And User Click on "NoteSave" Button on "Shared" Page
    And user wait for 3000 seconds
    And User Click on "Messages" Button on "Shared" Page
    And User Click on "EmailFax" Button on "Shared" Page
    And User switch tab 3
    And user wait for 2000 seconds
    And User Enters "SendToValue" on "SendToTextbox" Field on "Shared" Page
    And user wait for 2000 seconds
    And User SimpleClick on "SendEmail" Button on "Shared" Page
    When User Clicks on "Ok" button on AlertBox
    And user wait for 2000 seconds
    And User switch tab 2
    And User Click on "Messages" Button on "Shared" Page
    And user wait for 3000 seconds
    And User Click on "Attachments" Button on "Shared" Page
    And User Click on "AddAttachments" Button on "Shared" Page
    And User Select "AttachTypeValue" on "AttachType" Field on "Shared" Page
    And user wait for 3000 seconds
    And User Upload "Check.pdf" on "UploadDoc" Field on "Shared" Page
    And user wait for 6000 seconds
    And User Click on "SaveAttachments" Button on "Shared" Page
    And user wait for 3000 seconds

