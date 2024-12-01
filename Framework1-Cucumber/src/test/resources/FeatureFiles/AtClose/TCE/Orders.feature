Feature: Orders Scenarios

  Background:
    #TCE
#    Given User Setup Web Browser Session
#    When User Navigates to "AtClose Application" URL
#    And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseLogin" Page
#    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseLogin" Page
#    And User Click on "Login" Button on "AtCloseLogin" Page
#    Then User Validates "AtCloseTitle" Title
   ##SasS
    Given User Setup Web Browser Session
    When User Navigates to "VisionAtClose Application" URL
    And User Enters "UserName" on "UserNameTextbox" Field on "VisionAtCloseLogin" Page
    And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VisionAtCloseLogin" Page
    And User Click on "Login" Button on "VisionAtCloseLogin" Page
    Then User Validates "AtCloseTitle" Title

  Scenario: User Place an Order
      When User Click on "Orders" Button on "Orders" Page
      And User Click on "QuickOrderEntry" Button on "Orders" Page
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
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "SelectVendor" Button on "Orders" Page
#      And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "CompleteTask" Button on "Orders" Page
#      And User switch to Default from iframe
#      And user wait for 3000 seconds
#      And User Click on "OrderInbox" Button on "Orders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "ReceiveAssignment" Button on "Orders" Page
#      And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "Edit" Button on "Orders" Page
#      And user wait for 3000 seconds
#      And User Click on "VerifyDropdown" Button on "Orders" Page
#      And User Click on "VerifyValue" Button on "Orders" Page
#      And User Click on "CompleteReceive" Button on "Orders" Page
#      And User switch to Default from iframe
#      And user wait for 3000 seconds
#      And User Click on "OrderInbox" Button on "Orders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "TypeProduct" Button on "Orders" Page
#      And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "CompleteTypeProduct" Button on "Orders" Page
#      And User switch to Default from iframe
#      And user wait for 3000 seconds
#      And User Click on "OrderInbox" Button on "Orders" Page
#      And user wait for 3000 seconds
#      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "QCProduct" Button on "Orders" Page
#      And User Wait for Element "OrderProduct" to be visible on "S100TitleFlow" Page
#      And User Click on "QCSuccess" Button on "Orders" Page
#      And User Click on "QCPopup" Button on "Orders" Page
#      And User Wait for Element "OrderInboxProduct" to be visible on "S100TitleFlow" Page
#      And User switch to Default from iframe
#      And User Click on "OrderSearch" Button on "Orders" Page
#      And user wait for 2000 seconds
#      Then User Validates "AtCloseTitle" Title













