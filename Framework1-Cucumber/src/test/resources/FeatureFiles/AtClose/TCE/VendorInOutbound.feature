Feature: VendorInOutbound

  Background:
    Given User Setup Web Browser Session
    When User Navigates to "AtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
    And User Click on "Login" Button on "AtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: VendorInOutbound - User Place an Order

    When User Click on "Orders" Button on "Orders" Page
    And User Click on "QuickOrderEntry" Button on "Orders" Page
    And user wait for 5000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "Orders" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "Orders" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "Orders" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "Orders" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "Orders" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "Orders" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "Orders" Page
    And user wait for 5000 seconds
    And User Click on "AutomationProduct" Button on "Orders" Page
    And User Click on "AutomationProduct" Button on "Orders" Page
    And user wait for 5000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "Orders" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "Orders" Page
    And User Click on "PlaceOrder" Button on "Orders" Page
    And User Wait for Element "OrderPlaced" to be visible on "Orders" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "Orders" Page
    And User switch to Default from iframe
    And User Enters "OrderNo" on "OrderNoSearch" Field on "Orders" Page
    And User Click on "OrderInbox" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
    And User Click on "SelectVendor" Button on "Orders" Page
    And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
    And User Click on "CompleteTask" Button on "Orders" Page
    And User switch to Default from iframe
    And User Click on "OrderSearch" Button on "Orders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
    And User Click on "Transactions" Button on "VendorInOutbound" Page
    And User Click on "TxnOrderProduct" Button on "VendorInOutbound" Page
    And User switch to Default from iframe
    And User switch tab 2
    And User Click on "VendorAssignment" Button on "VendorInOutbound" Page
    And User Wait for Element "AssignID" to be visible on "VendorInOutbound" Page
    And User Save "AssignmentID" from "AssignID" having "value" Field on "VendorInOutbound" Page
    And User close tab and switch to 1
    And user wait for 3000 seconds
 ##API
    And I Update Value on "/STAT/Transaction/ProductList/Product/Reference" path of request body "VendorInOutbound" with "AssignmentID" from "VendorInOutbound" Test Data
    And I send a POST Xml Request to "VendorInOutBoundEndPoint" on "TitleBaseURL" having request body "VendorInOutbound" and 200 with following parameters and headers:
      | queryParams                   | headers                      |
      | integrator=TITLE_VENDOR       | Content-Type=application/xml |
      | userId=TITLE_VENDOR           |                              |
      | password=TITLE_VENDOR         |                              |
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
    And User Click on "OrderShared" Button on "S100TitleFlow" Page
    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
    And User Click on "EventLogS150" Button on "S100TitleFlow" Page
    And User Wait for Element "CompletedOrder" to be visible on "S100TitleFlow" Page
    Then User Validates "AtCloseTitle" Title

