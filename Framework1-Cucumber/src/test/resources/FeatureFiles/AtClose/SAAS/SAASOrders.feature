Feature: SAASOrders Scenarios

  Background:
   ##SasS
    Given User Setup Web Browser Session
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Place an Order
    When User Click on "Orders" Button on "SAASOrders" Page
    And User Click on "QuickOrderEntry" Button on "SAASOrders" Page
    And User switch to iframe "FrameQuickOrderEntry" on "SAASOrders" Page
    And User Enters "ClientNo2005" on "ClientNo" Field on "SAASOrders" Page
    And user wait for 5000 seconds
    And User Click on "StreetNo" Button on "SAASOrders" Page
    And User Enters "StreetNo897" on "StreetNo" Field on "SAASOrders" Page
    And user wait for 5000 seconds
    And User Enters "StreetAddressNM" on "StreetAddress" Field on "SAASOrders" Page
    And user wait for 3000 seconds
    And User Enters "TransactionNoVal" on "TransactionNo" Field on "SAASOrders" Page
    And user wait for 3000 seconds
    And User Click on "ZipCode" Button on "SAASOrders" Page
    And User Enters "ZipCode08512" on "ZipCode" Field on "SAASOrders" Page
    And user wait for 5000 seconds
    And User Click on "AutomationProduct" Button on "SAASOrders" Page
    And User Click on "AutomationProduct" Button on "SAASOrders" Page
    And user wait for 5000 seconds
    And User Enters "FirstNameAsmodias" on "FirstName" Field on "SAASOrders" Page
    And user wait for 3000 seconds
    And User Enters "LastNameDavid" on "LastName" Field on "SAASOrders" Page
    And User Click on "PlaceOrder" Button on "SAASOrders" Page
    And User Wait for Element "OrderPlaced" to be visible on "SAASOrders" Page
    And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "SAASOrders" Page
    And User switch to Default from iframe
    And User Enters "OrderNo" on "OrderNoSearch" Field on "SAASOrders" Page
    And User Click on "OrderInbox" Button on "SAASOrders" Page
    And user wait for 3000 seconds
    And User switch to iframe "FrameQuickOrderEntry" on "SAASOrders" Page
    And User Wait for Element "OrderInboxProduct" to be visible on "SAASOrders" Page
    And User Click on "SelectVendor" Button on "SAASOrders" Page
    And User Wait for Element "OrderProduct" to be visible on "SAASOrders" Page
    And User Click on "CompleteTask" Button on "SAASOrders" Page
    And User switch to Default from iframe
#      And User Click on "OrderInbox" Button on "SAASOrders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "SAASOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "SAASOrders" Page
#      And User Click on "ReceiveAssignment" Button on "SAASOrders" Page
#      And User Wait for Element "OrderProduct" to be visible on "SAASOrders" Page
#      And User Click on "Edit" Button on "SAASOrders" Page
#      And user wait for 3000 seconds
#      And User Click on "VerifyDropdown" Button on "SAASOrders" Page
#      And User Click on "VerifyValue" Button on "SAASOrders" Page
#      And User Click on "CompleteReceive" Button on "SAASOrders" Page
#      And User switch to Default from iframe
#      And user wait for 3000 seconds
#      And User Click on "OrderInbox" Button on "SAASOrders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "SAASOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "SAASOrders" Page
#      And User Click on "TypeProduct" Button on "SAASOrders" Page
#      And User Wait for Element "OrderProduct" to be visible on "SAASOrders" Page
#      And User Click on "CompleteTypeProduct" Button on "SAASOrders" Page
#      And User Click on "TypeConfirm" Button on "SAASOrders" Page
#      And User switch to Default from iframe
#      And User Click on "OrderInbox" Button on "SAASOrders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "SAASOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "SAASOrders" Page
#      And User Click on "QCProduct" Button on "SAASOrders" Page
#      And User Wait for Element "OrderProduct" to be visible on "SAASOrders" Page
#      And User Click on "QCSuccess" Button on "SAASOrders" Page
#      And User Click on "QCPopup" Button on "SAASOrders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "SAASOrders" Page
#      And User switch to Default from iframe
#      And User Click on "OrderSearch" Button on "SAASOrders" Page
#      And user wait for 2000 seconds
#      Then User Validates "AtCloseTitle" Title












