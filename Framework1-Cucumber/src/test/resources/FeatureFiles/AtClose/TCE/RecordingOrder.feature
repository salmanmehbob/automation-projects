Feature: RecordingOrder Scenarios

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Place an RecordingOrder
      When User Click on "Orders" Button on "RecordingOrder" Page
      And User Click on "QuickOrderEntry" Button on "RecordingOrder" Page
      And User switch to iframe "FrameQuickOrderEntry" on "RecordingOrder" Page
      And User Enters "ClientNo2005" on "ClientNo" Field on "RecordingOrder" Page
      And user wait for 5000 seconds
      And User Click on "StreetNo" Button on "RecordingOrder" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "RecordingOrder" Page
      And user wait for 5000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User Click on "ZipCode" Button on "RecordingOrder" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "RecordingOrder" Page
      And user wait for 5000 seconds
      And User Click on "AutomationRecording" Button on "RecordingOrder" Page
      And User Click on "AutomationRecording" Button on "RecordingOrder" Page
      And user wait for 4000 seconds
      And User Select "DocType" on "DocTypeDrop" Field on "RecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "RecPageVal" on "RecPage" Field on "RecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "RecPageAmt" on "RecAmt" Field on "RecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User Enters "LastNameDavid" on "LastName" Field on "RecordingOrder" Page
      And User Click on "PlaceOrder" Button on "RecordingOrder" Page
      And User Wait for Element "OrderPlaced" to be visible on "RecordingOrder" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "RecordingOrder" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "RecordingOrder" Page
      And User Click on "OrderInbox" Button on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RecordingOrder" Page
      And User Click on "SelectRecordingVendor" Button on "RecordingOrder" Page
      And User Wait for Element "OrderProduct" to be visible on "RecordingOrder" Page
      And User Click on "RecCompleteTask" Button on "RecordingOrder" Page
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RecordingOrder" Page
      And User Click on "SendRecordingDoc" Button on "RecordingOrder" Page
      And User Wait for Element "OrderProduct" to be visible on "RecordingOrder" Page
      And User Click on "RecDocCompleteTask" Button on "RecordingOrder" Page
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RecordingOrder" Page
      And User Click on "ReceiveRecTask" Button on "RecordingOrder" Page
      And user wait for 2000 seconds
      And User Click on "ReceiveDetail" Button on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User Scroll to "DetailLabel" on "RecordingOrder" Page
      And User SimpleClick on "ReceiveDetailEdit" Button on "RecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "DetailDate" on "RecDate" Field on "RecordingOrder" Page
      And User Enters "DetailQualifierVal1" on "DetailQualifier1" Field on "RecordingOrder" Page
      And User Enters "DetailQualifierVal2" on "DetailQualifier2" Field on "RecordingOrder" Page
      And User Click on "ReceiveDetailSave" Button on "RecordingOrder" Page
      And user wait for 2000 seconds
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "RecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RecordingOrder" Page
      And User Click on "ReceiveRecTask" Button on "RecordingOrder" Page
      And User Wait for Element "OrderProduct" to be visible on "RecordingOrder" Page
      And User Click on "ReceiveRecCheck" Button on "RecordingOrder" Page
      And User Click on "ReceiveRecAccept" Button on "RecordingOrder" Page
      And user wait for 2000 seconds
      And User switch to Default from iframe
      And User Click on "OrderSearch" Button on "RecordingOrder" Page
      And User switch to iframe "FrameQuickOrderEntry" on "RecordingOrder" Page
      And User Wait for Element "CompletedOrder" to be visible on "RecordingOrder" Page
      Then User Validates "AtCloseTitle" Title
















