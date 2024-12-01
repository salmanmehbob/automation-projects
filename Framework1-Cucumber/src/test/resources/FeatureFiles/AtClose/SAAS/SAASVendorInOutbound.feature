Feature: SAASVendorInOutbound

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: VendorInOutbound - User Place an Order

    When User Click on "Orders" Button on "SAASVendorInOutbound" Page
    And User Click on "QuickOrderEntry" Button on "SAASVendorInOutbound" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SAASVendorInOutbound" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "SAASVendorInOutbound" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "SAASVendorInOutbound" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "SAASVendorInOutbound" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "SAASVendorInOutbound" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "SAASVendorInOutbound" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "SAASVendorInOutbound" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "SAASVendorInOutbound" Page
    And user wait for 5000 seconds
    And User Click on "AutomationProduct" Button on "RecordingOrder" Page
    And User Click on "AutomationProduct" Button on "RecordingOrder" Page
    And user wait for 5000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "SAASVendorInOutbound" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "SAASVendorInOutbound" Page
    And User Click on "PlaceOrder" Button on "SAASVendorInOutbound" Page
    And User Wait for Element "OrderPlaced" to be visible on "SAASVendorInOutbound" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "SAASVendorInOutbound" Page
    And User switch to Default from iframe
    And User Enters "OrderNo" on "OrderNoSearch" Field on "SAASVendorInOutbound" Page
    And User Click on "OrderInbox" Button on "SAASVendorInOutbound" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "SAASVendorInOutbound" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "SAASVendorInOutbound" Page
    And User Click on "SelectVendor" Button on "SAASVendorInOutbound" Page
    And User Wait for Element "OrderProduct" to be visible on "SAASVendorInOutbound" Page
    And User Click on "CompleteTask" Button on "SAASVendorInOutbound" Page
    And User switch to Default from iframe
#    And User Click on "OrderSearch" Button on "SAASVendorInOutbound" Page
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "SAASVendorInOutbound" Page
#    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
#    And User Click on "Transactions" Button on "SAASVendorInOutbound" Page
#    And User Click on "TxnOrderProduct" Button on "SAASVendorInOutbound" Page
#    And User switch to Default from iframe
#    And User switch tab 2
#    And User Click on "VendorAssignment" Button on "SAASVendorInOutbound" Page
#    And User Wait for Element "AssignID" to be visible on "SAASVendorInOutbound" Page
#    And User Save "AssignmentID" from "AssignID" having "value" Field on "SAASVendorInOutbound" Page
#    And User close tab and switch to 1
#    And user wait for 3000 seconds
# ##API
#    And I Update Value on "/STAT/Transaction/ProductList/Product/Reference" path of request body "VendorInOutbound" with "AssignmentID" from "VendorInOutbound" Test Data
#    And I send a POST Xml Request to "VendorInOutBoundEndPoint" on "TitleBaseURL" having request body "VendorInOutbound" and 200 with following parameters and headers:
#      | queryParams                   | headers                      |
#      | integrator=TITLE_VENDOR       | Content-Type=application/xml |
#      | userId=TITLE_VENDOR           |                              |
#      | password=TITLE_VENDOR         |                              |
#    And user wait for 3000 seconds
#    And User switch to iframe "FrameQuickOrderEntry" on "SAASVendorInOutbound" Page
#    And User Wait for Element "CompletedOrder" to be visible on "SAASVendorInOutbound" Page
#    And User Click on "OrderShared" Button on "SAASVendorInOutbound" Page
#    And User Wait for Element "CompletedOrder" to be visible on "SAASVendorInOutbound" Page
#    And User Click on "EventLogS150" Button on "SAASVendorInOutbound" Page
#    And User Wait for Element "CompletedOrder" to be visible on "SAASVendorInOutbound" Page
#    Then User Validates "AtCloseTitle" Title

