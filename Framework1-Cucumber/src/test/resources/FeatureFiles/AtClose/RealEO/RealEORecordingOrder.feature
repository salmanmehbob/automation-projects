Feature: RealEORecordingOrder Scenarios

  Background:
      Given User Setup Web Browser Session
      When User Navigates to "RealEO Application" URL
      And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
      And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
      And User Click on "Login" Button on "RealEOLogin" Page

  Scenario: User Place an RecordingOrder
      When User Click on "Orders" Button on "RealEORecordingOrder" Page
      And User Click on "QuickOrderEntry" Button on "RealEORecordingOrder" Page
      And User switch to iframe "FrameQuickOrderEntry" on "RealEORecordingOrder" Page
      And User Enters "ClientNo2005" on "ClientNo" Field on "RealEORecordingOrder" Page
      And user wait for 5000 seconds
      And User Click on "StreetNo" Button on "RealEORecordingOrder" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "RealEORecordingOrder" Page
      And user wait for 5000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User Click on "ZipCode" Button on "RealEORecordingOrder" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "RealEORecordingOrder" Page
      And user wait for 5000 seconds
      And User Click on "AutomationRecording" Button on "RealEORecordingOrder" Page
      And User Click on "AutomationRecording" Button on "RealEORecordingOrder" Page
      And user wait for 4000 seconds
      And User Select "DocType" on "DocTypeDrop" Field on "RealEORecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "RecPageVal" on "RecPage" Field on "RealEORecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "RecPageAmt" on "RecAmt" Field on "RealEORecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User Enters "LastNameDavid" on "LastName" Field on "RealEORecordingOrder" Page
      And User Click on "PlaceOrder" Button on "RealEORecordingOrder" Page
      And User Wait for Element "OrderPlaced" to be visible on "RealEORecordingOrder" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "RealEORecordingOrder" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "RealEORecordingOrder" Page
      And User Click on "OrderInbox" Button on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RealEORecordingOrder" Page
      And User Click on "SelectRecordingVendor" Button on "RealEORecordingOrder" Page
      And User Wait for Element "OrderProduct" to be visible on "RealEORecordingOrder" Page
      And User Click on "RecCompleteTask" Button on "RealEORecordingOrder" Page
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RealEORecordingOrder" Page
      And User Click on "SendRecordingDoc" Button on "RealEORecordingOrder" Page
      And User Wait for Element "OrderProduct" to be visible on "RealEORecordingOrder" Page
      And User Click on "RecDocCompleteTask" Button on "RealEORecordingOrder" Page
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RealEORecordingOrder" Page
      And User Click on "ReceiveRecTask" Button on "RealEORecordingOrder" Page
      And user wait for 2000 seconds
      And User Click on "ReceiveDetail" Button on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User Scroll to "DetailLabel" on "RealEORecordingOrder" Page
      And User SimpleClick on "ReceiveDetailEdit" Button on "RealEORecordingOrder" Page
      And user wait for 2000 seconds
      And User Enters "DetailDate" on "RecDate" Field on "RealEORecordingOrder" Page
      And User Enters "DetailQualifierVal1" on "DetailQualifier1" Field on "RealEORecordingOrder" Page
      And User Enters "DetailQualifierVal2" on "DetailQualifier2" Field on "RealEORecordingOrder" Page
      And User Click on "ReceiveDetailSave" Button on "RealEORecordingOrder" Page
      And user wait for 2000 seconds
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "RealEORecordingOrder" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "RealEORecordingOrder" Page
      And User Click on "ReceiveRecTask" Button on "RealEORecordingOrder" Page
      And User Wait for Element "OrderProduct" to be visible on "RealEORecordingOrder" Page
      And User Click on "ReceiveRecCheck" Button on "RealEORecordingOrder" Page
      And User Click on "ReceiveRecAccept" Button on "RealEORecordingOrder" Page
      And user wait for 2000 seconds
      And User switch to Default from iframe
      And User Click on "OrderSearch" Button on "RealEORecordingOrder" Page
      And User switch to iframe "FrameQuickOrderEntry" on "RealEORecordingOrder" Page
      And User Wait for Element "CompletedOrder" to be visible on "RealEORecordingOrder" Page
      Then User Validates "AtCloseTitle" Title

















