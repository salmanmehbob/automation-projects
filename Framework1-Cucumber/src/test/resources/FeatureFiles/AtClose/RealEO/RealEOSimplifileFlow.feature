Feature: RealEOSimplifileFlow

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page

  Scenario: User Perform Simplifile integration (inbound/outbound)
    #OrderPlacing
    When User Click on "Orders" Button on "RealEOSimplifileFlow" Page
    And User Click on "QuickOrderEntry" Button on "RealEOSimplifileFlow" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOSimplifileFlow" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "RealEOSimplifileFlow" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "RealEOSimplifileFlow" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "RealEOSimplifileFlow" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "RealEOSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "RealEOSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "RealEOSimplifileFlow" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "RealEOSimplifileFlow" Page
    And user wait for 5000 seconds
    And User Click on "RecordingProduct" Button on "RealEOSimplifileFlow" Page
    And User Click on "RecordingProduct" Button on "RealEOSimplifileFlow" Page
    And user wait for 4000 seconds
    And User Select "DocType" on "DocTypeDrop" Field on "RealEOSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "RecPageVal" on "RecPage" Field on "RealEOSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "RecPageAmt" on "RecAmt" Field on "RealEOSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "RealEOSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "RealEOSimplifileFlow" Page
    And User Click on "PlaceOrder" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderPlaced" to be visible on "RealEOSimplifileFlow" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "RealEOSimplifileFlow" Page
    And User switch to Default from iframe
    And User Enters "OrderNo" on "OrderNoSearch" Field on "RealEOSimplifileFlow" Page
    And User Click on "OrderInbox" Button on "RealEOSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOSimplifileFlow" Page
    #OrderTask
    And User Wait for Element "OrderInboxProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "SelectRecordingVendor" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "RecCompleteTask" Button on "RealEOSimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "RealEOSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "SendRecordingDoc" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "Shared" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "Attachment" Button on "RealEOSimplifileFlow" Page
    And User Click on "AddAttachment" Button on "RealEOSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Select "AttachmentType" on "OrderAttachmentDrop" Field on "RealEOSimplifileFlow" Page
    And User Upload "Check.pdf" on "BrowseFile" Field on "RealEOSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Click on "AttachmentSave" Button on "RealEOSimplifileFlow" Page
    And user wait for 1000 seconds
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "RealEOSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "SendRecordingDoc" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "AssignmentCheck" Button on "RealEOSimplifileFlow" Page
    And User Click on "AddPackage" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "PackageAdded" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "RecDocCompleteTask" Button on "RealEOSimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "RealEOSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "SubmitDoc" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "CompleteSubmitDoc" Button on "RealEOSimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "RealEOSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "ReceiveRecTask" Button on "RealEOSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "RealEOSimplifileFlow" Page
    And User Click on "Details" Button on "RealEOSimplifileFlow" Page
    And User save "PackageName" from "PackageID" Field which is "notClickable" on "RealEOSimplifileFlow" Page
    And User Split text "PackageName" by "-" having 2 and save "splitText" Field on "RealEOSimplifileFlow" Page
    And User save "RecordableDocumentID" from "DocumentID" Field which is "clickable" on "RealEOSimplifileFlow" Page
    ##API
    And I Update Value on "/xml/object/documents/id" path of request body "RealEOSimplifileFlow" with "RecordableDocumentID" from "RealEOSimplifileFlow" Test Data
    And I Update Value on "/xml/object/id" path of request body "RealEOSimplifileFlow" with "splitText" from "RealEOSimplifileFlow" Test Data
    And I send a POST Xml Request to "RealEOSimplifileEndPoint" on "RealEOBaseURL" having request body "RealEOSimplifileFlow" and 200 with following parameters and headers:
      | queryParams                   | headers                      |
      | integrator=SIMPLIFILE         | Content-Type=application/xml |
      | userId=TEST                   |                              |
      | password=TEST@1234            |                              |
    And user wait for 2000 seconds
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "RealEOSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "RealEOSimplifileFlow" Page
    Then User Validates "AtCloseTitle" Title








