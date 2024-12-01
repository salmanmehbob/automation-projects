Feature: VPOrders Scenarios

  Background:
   ##VP
    Given User Setup Web Browser Session
    When User Navigates to "VP Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VPLogin" Page
    And User Click on "Next" Button on "VPLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPLogin" Page
    And User Click on "Login" Button on "VPLogin" Page

  Scenario: User Place an Order
      When User Click on "Orders" Button on "VPOrders" Page
      And User Click on "QuickOrderEntry" Button on "VPOrders" Page
      And User switch to iframe "FrameQuickOrderEntry" on "VPOrders" Page
      And User Enters "ClientNo2005" on "ClientNo" Field on "VPOrders" Page
      And user wait for 5000 seconds
      And User Click on "StreetNo" Button on "VPOrders" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "VPOrders" Page
      And user wait for 5000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "VPOrders" Page
      And user wait for 3000 seconds
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "VPOrders" Page
      And user wait for 3000 seconds
      And User Click on "ZipCode" Button on "VPOrders" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "VPOrders" Page
      And user wait for 5000 seconds
      And User Click on "AutomationProduct" Button on "VPOrders" Page
      And User Click on "AutomationProduct" Button on "VPOrders" Page
      And user wait for 5000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "VPOrders" Page
      And user wait for 3000 seconds
      And User Enters "LastNameDavid" on "LastName" Field on "VPOrders" Page
      And User Click on "PlaceOrder" Button on "VPOrders" Page
      And User Wait for Element "OrderPlaced" to be visible on "VPOrders" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "VPOrders" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "VPOrders" Page
      And User Click on "OrderInbox" Button on "VPOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "VPOrders" Page
      And User Wait for Element "OrderInboxProduct" to be visible on "VPOrders" Page
      And User Click on "SelectVendor" Button on "VPOrders" Page
      And User Wait for Element "OrderProduct" to be visible on "VPOrders" Page
      And User Click on "CompleteTask" Button on "VPOrders" Page
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "VPOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "VPOrders" Page
      And User Wait for Element "OrderInboxProduct" to be visible on "VPOrders" Page
      And User Click on "ReceiveAssignment" Button on "VPOrders" Page
      And User Wait for Element "OrderProduct" to be visible on "VPOrders" Page
      And User Click on "Edit" Button on "VPOrders" Page
      And user wait for 3000 seconds
      And User Click on "VerifyDropdown" Button on "VPOrders" Page
      And User Click on "VerifyValue" Button on "VPOrders" Page
      And User Click on "CompleteReceive" Button on "VPOrders" Page
      And User switch to Default from iframe
      And user wait for 3000 seconds
      And User Click on "OrderInbox" Button on "VPOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "VPOrders" Page
      And User Wait for Element "OrderInboxProduct" to be visible on "VPOrders" Page
      And User Click on "TypeProduct" Button on "VPOrders" Page
      And User Wait for Element "OrderProduct" to be visible on "VPOrders" Page
      And User Click on "CompleteTypeProduct" Button on "VPOrders" Page
      And User Click on "TypeConfirm" Button on "VPOrders" Page
      And User switch to Default from iframe
      And User Click on "OrderInbox" Button on "VPOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "VPOrders" Page
      And User Wait for Element "OrderInboxProduct" to be visible on "VPOrders" Page
      And User Click on "QCProduct" Button on "VPOrders" Page
      And User Wait for Element "OrderProduct" to be visible on "VPOrders" Page
      And User Click on "QCSuccess" Button on "VPOrders" Page
      And User Click on "QCPopup" Button on "VPOrders" Page
      And User Wait for Element "OrderInboxProduct" to be visible on "VPOrders" Page
      And User switch to Default from iframe
      And User Click on "OrderSearch" Button on "VPOrders" Page
      And user wait for 2000 seconds
      Then User Validates "AtCloseTitle" Title













