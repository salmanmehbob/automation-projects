Feature: VPSimplifileFlow

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page

  Scenario: User Perform Simplifile integration (inbound/outbound)
    #OrderPlacing
    When User Click on "Orders" Button on "VPSimplifileFlow" Page
    And User Click on "QuickOrderEntry" Button on "VPSimplifileFlow" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "VPSimplifileFlow" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "VPSimplifileFlow" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "VPSimplifileFlow" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "VPSimplifileFlow" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "VPSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "VPSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "VPSimplifileFlow" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "VPSimplifileFlow" Page
    And user wait for 5000 seconds
    And User Click on "RecordingProduct" Button on "VPSimplifileFlow" Page
    And User Click on "RecordingProduct" Button on "VPSimplifileFlow" Page
    And user wait for 4000 seconds
    And User Select "DocType" on "DocTypeDrop" Field on "VPSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "RecPageVal" on "RecPage" Field on "VPSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "RecPageAmt" on "RecAmt" Field on "VPSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "VPSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "VPSimplifileFlow" Page
    And User Click on "PlaceOrder" Button on "VPSimplifileFlow" Page
    And User Wait for Element "OrderPlaced" to be visible on "VPSimplifileFlow" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "VPSimplifileFlow" Page
    And User switch to Default from iframe
    And User Enters "OrderNo" on "OrderNoSearch" Field on "VPSimplifileFlow" Page
    And User Click on "OrderInbox" Button on "VPSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "VPSimplifileFlow" Page
    #OrderTask
    And User Wait for Element "OrderInboxProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "SelectRecordingVendor" Button on "VPSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "RecCompleteTask" Button on "VPSimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "VPSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "VPSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "SendRecordingDoc" Button on "VPSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "Shared" Button on "VPSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "Attachment" Button on "VPSimplifileFlow" Page
    And User Click on "AddAttachment" Button on "VPSimplifileFlow" Page
    And user wait for 2000 seconds
    And User Select "AttachmentType" on "OrderAttachmentDrop" Field on "VPSimplifileFlow" Page
    And User Upload "Check.pdf" on "BrowseFile" Field on "VPSimplifileFlow" Page
    And user wait for 3000 seconds
    And User Click on "AttachmentSave" Button on "VPSimplifileFlow" Page
    And user wait for 1000 seconds
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "VPSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "VPSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "SendRecordingDoc" Button on "VPSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "AssignmentCheck" Button on "VPSimplifileFlow" Page
    And User Click on "AddPackage" Button on "VPSimplifileFlow" Page
    And User Wait for Element "PackageAdded" to be visible on "VPSimplifileFlow" Page
    And User Click on "RecDocCompleteTask" Button on "VPSimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "VPSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "VPSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "SubmitDoc" Button on "VPSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "CompleteSubmitDoc" Button on "VPSimplifileFlow" Page
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "VPSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "VPSimplifileFlow" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "ReceiveRecTask" Button on "VPSimplifileFlow" Page
    And User Wait for Element "OrderProduct" to be visible on "VPSimplifileFlow" Page
    And User Click on "Details" Button on "VPSimplifileFlow" Page
    And User save "PackageName" from "PackageID" Field which is "notClickable" on "VPSimplifileFlow" Page
    And User Split text "PackageName" by "-" having 2 and save "splitText" Field on "VPSimplifileFlow" Page
    And User save "RecordableDocumentID" from "DocumentID" Field which is "clickable" on "VPSimplifileFlow" Page
    ##API
    And I Update Value on "/xml/object/documents/id" path of request body "VPSimplifileFlow" with "RecordableDocumentID" from "VPSimplifileFlow" Test Data
    And I Update Value on "/xml/object/id" path of request body "VPSimplifileFlow" with "splitText" from "VPSimplifileFlow" Test Data
    And I send a POST Xml Request to "VPSimplifileEndPoint" on "VPBaseURL" having request body "VPSimplifileFlow" and 200 with following parameters and headers:
      | queryParams                   | headers                      |
      | integrator=SIMPLIFILE         | Content-Type=application/xml |
      | userId=simplifile             |                              |
      | password=simplifile           |                              |
    And user wait for 2000 seconds
    And User switch to Default from iframe
    And User Click on "OrderInbox" Button on "VPSimplifileFlow" Page
    And User switch to iframe "FrameQuickOrderEntry" on "VPSimplifileFlow" Page
    Then User Validates "AtCloseTitle" Title








