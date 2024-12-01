Feature: SAASShared Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title


  Scenario: User Add Shared Items
    And User Enters "TestValueShared" on "OrderNoSearch" Field on "SAASShared" Page
    And User Click on "OrderSearch" Button on "SAASShared" Page
    And user wait for 2000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Click on "Transactions" Button on "SAASShared" Page
    And User Click on "CloseTitle" Button on "SAASShared" Page
    And User switch to Default from iframe
    And User switch tab 2
    And user wait for 3000 seconds
    And User Click on "Share" Button on "SAASShared" Page
    And User Click on "Notes" Button on "SAASShared" Page
    And User Click on "AddNotes" Button on "SAASShared" Page
    And User Enters "NoteValue" on "NoteTextbox" Field on "SAASShared" Page
    And User Click on "NoteSave" Button on "SAASShared" Page
    And user wait for 3000 seconds
    And User Click on "Messages" Button on "SAASShared" Page
    And User Click on "EmailFax" Button on "SAASShared" Page
    And User switch tab 3
    And user wait for 2000 seconds
    And User Enters "SendToValue" on "SendToTextbox" Field on "SAASShared" Page
    And user wait for 2000 seconds
    And User SimpleClick on "SendEmail" Button on "SAASShared" Page
    When User Clicks on "Ok" button on AlertBox
    And user wait for 2000 seconds
    And User switch tab 2
    And User Click on "Messages" Button on "SAASShared" Page
    And user wait for 3000 seconds
    And User Click on "Attachments" Button on "SAASShared" Page
    And User Click on "AddAttachments" Button on "SAASShared" Page
    And User Select "AttachTypeValue" on "AttachType" Field on "SAASShared" Page
    And user wait for 3000 seconds
    And User Upload "Check.pdf" on "UploadDoc" Field on "SAASShared" Page
    And user wait for 2000 seconds
    And User Wait for Element "uploadLoader" to be visible on "SAASShared" Page
    And User Click on "SaveAttachments" Button on "SAASShared" Page
    And user wait for 3000 seconds

