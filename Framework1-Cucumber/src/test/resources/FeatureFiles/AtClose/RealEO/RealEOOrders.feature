Feature: RealEOOrders Scenarios

  Background:
   ##RealEO
    Given User Setup Web Browser Session
    When User Navigates to "RealEO Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "RealEOLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOLogin" Page
    And User Click on "Login" Button on "RealEOLogin" Page

  Scenario: User Place an Order
      When User Click on "Orders" Button on "RealEOOrders" Page
      And User Click on "QuickOrderEntry" Button on "RealEOOrders" Page
      And User switch to iframe "FrameQuickOrderEntry" on "RealEOOrders" Page
      And User Enters "ClientNo2005" on "ClientNo" Field on "RealEOOrders" Page
      And user wait for 5000 seconds
      And User Click on "StreetNo" Button on "RealEOOrders" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "RealEOOrders" Page
      And user wait for 5000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "RealEOOrders" Page
      And user wait for 3000 seconds
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "RealEOOrders" Page
      And user wait for 3000 seconds
      And User Click on "ZipCode" Button on "RealEOOrders" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "RealEOOrders" Page
      And user wait for 5000 seconds
      And User Click on "AutomationProduct" Button on "RealEOOrders" Page
      And User Click on "AutomationProduct" Button on "RealEOOrders" Page
      And user wait for 5000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "RealEOOrders" Page
      And user wait for 3000 seconds
      And User Enters "LastNameDavid" on "LastName" Field on "RealEOOrders" Page
      And User Click on "PlaceOrder" Button on "RealEOOrders" Page
      And User Wait for Element "OrderPlaced" to be visible on "RealEOOrders" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "RealEOOrders" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "RealEOOrders" Page
#      And User Click on "OrderInbox" Button on "RealEOOrders" Page
      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "RealEOOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "RealEOOrders" Page
#      And User Click on "SelectVendor" Button on "RealEOOrders" Page
#      And User Wait for Element "OrderProduct" to be visible on "RealEOOrders" Page
#      And User Click on "CompleteTask" Button on "RealEOOrders" Page
#      And User switch to Default from iframe
#      And User Click on "OrderInbox" Button on "RealEOOrders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "RealEOOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "RealEOOrders" Page
#      And User Click on "ReceiveAssignment" Button on "RealEOOrders" Page
#      And User Wait for Element "OrderProduct" to be visible on "RealEOOrders" Page
#      And User Click on "Edit" Button on "RealEOOrders" Page
#      And user wait for 3000 seconds
#      And User Click on "VerifyDropdown" Button on "RealEOOrders" Page
#      And User Click on "VerifyValue" Button on "RealEOOrders" Page
#      And User Click on "CompleteReceive" Button on "RealEOOrders" Page
#      And User switch to Default from iframe
#      And user wait for 3000 seconds
#      And User Click on "OrderInbox" Button on "RealEOOrders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "RealEOOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "RealEOOrders" Page
#      And User Click on "TypeProduct" Button on "RealEOOrders" Page
#      And User Wait for Element "OrderProduct" to be visible on "RealEOOrders" Page
#      And User Click on "CompleteTypeProduct" Button on "RealEOOrders" Page
#      And User Click on "TypeConfirm" Button on "RealEOOrders" Page
#      And User switch to Default from iframe
#      And User Click on "OrderInbox" Button on "RealEOOrders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "RealEOOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "RealEOOrders" Page
#      And User Click on "QCProduct" Button on "RealEOOrders" Page
#      And User Wait for Element "OrderProduct" to be visible on "RealEOOrders" Page
#      And User Click on "QCSuccess" Button on "RealEOOrders" Page
#      And User Click on "QCPopup" Button on "RealEOOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "RealEOOrders" Page
#      And User switch to Default from iframe
#      And User Click on "OrderSearch" Button on "RealEOOrders" Page
#      And user wait for 2000 seconds
#      Then User Validates "AtCloseTitle" Title













