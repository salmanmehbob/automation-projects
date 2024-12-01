Feature: SimplifileFlow

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Perform Simplifile integration (inbound/outbound)
    When User Click on "Orders" Button on "SimplifileFlow" Page
    And User Click on "QuickOrderEntry" Button on "SimplifileFlow" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "SimplifileFlow" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "SimplifileFlow" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "SimplifileFlow" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "SimplifileFlow" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "SimplifileFlow" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "SimplifileFlow" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "SimplifileFlow" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "SimplifileFlow" Page
    And user wait for 5000 seconds
    And User Click on "RecordingProduct" Button on "SimplifileFlow" Page
    And User Click on "RecordingProduct" Button on "SimplifileFlow" Page
    And user wait for 4000 seconds
    And User Select "DocType" on "DocTypeDrop" Field on "SimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "RecPageVal" on "RecPage" Field on "SimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "RecPageAmt" on "RecAmt" Field on "SimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "SimplifileFlow" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "SimplifileFlow" Page
    And User Click on "PlaceOrder" Button on "SimplifileFlow" Page
    And User Wait for Element "OrderPlaced" to be visible on "SimplifileFlow" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "SimplifileFlow" Page
    And User switch to Default from iframe
    And User Enters "OrderNo" on "OrderNoSearch" Field on "SimplifileFlow" Page
    And User Click on "OrderInbox" Button on "SimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "SimplifileFlow" Page
    And User Click on "SelectRecordingVendor" Button on "SimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "SimplifileFlow" Page
    And User Click on "RecCompleteTask" Button on "SimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "SimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "SimplifileFlow" Page
    And User Click on "SendRecordingDoc" Button on "SimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "SimplifileFlow" Page
    And User Click on "Shared" Button on "SimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "SimplifileFlow" Page
    And User Click on "Attachment" Button on "SimplifileFlow" Page
    And User Click on "AddAttachment" Button on "SimplifileFlow" Page
    And user wait for 2000 seconds
    And User Select "AttachmentType" on "OrderAttachmentDrop" Field on "SimplifileFlow" Page
    And User Upload "Check.pdf" on "BrowseFile" Field on "SimplifileFlow" Page
    And user wait for 3000 seconds
    And User Click on "AttachmentSave" Button on "SimplifileFlow" Page
    And user wait for 1000 seconds
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "SimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "SimplifileFlow" Page
    And User Click on "SendRecordingDoc" Button on "SimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "SimplifileFlow" Page
    And User Click on "AssignmentCheck" Button on "SimplifileFlow" Page
    And User Click on "AddPackage" Button on "SimplifileFlow" Page
    And User Wait for Element "PackageAdded" to be visible on "SimplifileFlow" Page
    And User Click on "RecDocCompleteTask" Button on "SimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "SimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "SimplifileFlow" Page
    And User Click on "SubmitDoc" Button on "SimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "SimplifileFlow" Page
    And User Click on "CompleteSubmitDoc" Button on "SimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "SimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "SimplifileFlow" Page
    And User Click on "ReceiveRecTask" Button on "SimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "SimplifileFlow" Page
    And User Click on "Details" Button on "SimplifileFlow" Page
    And User save "PackageName" from "PackageID" Field which is "notClickable" on "SimplifileFlow" Page
    And User Split text "PackageName" by "-" having 2 and save "splitText" Field on "SimplifileFlow" Page
    And User save "RecordableDocumentID" from "DocumentID" Field which is "clickable" on "SimplifileFlow" Page
    ##API
    And I Update Value on "/xml/object/documents/id" path of request body "SimplifileFlow" with "RecordableDocumentID" from "SimplifileFlow" Test Data
    And I Update Value on "/xml/object/id" path of request body "SimplifileFlow" with "splitText" from "SimplifileFlow" Test Data
    And I send a POST Xml Request to "SimplifileEndPoint" on "RevampBaseURL" having request body "SimplifileFlow" and 200 with following parameters and headers:
      | queryParams                   | headers                      |
      | integrator=SIMPLIFILE         | Content-Type=application/xml |
      | userId=simplifile             |                              |
      | password=simplifile           |                              |
    And user wait for 2000 seconds
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "SimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SimplifileFlow" Page
    Then User Validates "AtCloseTitle" Title








