Feature: SAASClientOrders Scenarios

  Background:
    Given User Setup Web Browser Session
      When User Navigates to "SAASClient Application" URL
      And User Enters "UserName" on "UserNameTextbox" Field on "SAASClientLogin" Page
      And User Enters "UserPassword" on "UserPasswordTextbox" Field on "SAASClientLogin" Page
      And User Click on "Login" Button on "SAASClientLogin" Page
      Then User Validates "AtCloseTitle" Title

  Scenario: User Place an Order
 #   When user click on "Orders" on page "Orders"
      And User Click on "Orders" Button on "SAASClientOrders" Page
      And User Click on "AddOrderEntry" Button on "SAASClientOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "SAASClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "StreetNo" Button on "SAASClientOrders" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "SAASClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "SAASClientOrders" Page
      And user wait for 2000 seconds
      And User Click on "ZipCode" Button on "SAASClientOrders" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "SAASClientOrders" Page
      And User Click on "AutomationProduct" Button on "SAASClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "AutomationProduct" Button on "SAASClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "SAASClientOrders" Page
      And User Enters "LastNameDavid" on "LastName" Field on "SAASClientOrders" Page
      And User Click on "PlaceOrder" Button on "SAASClientOrders" Page
      And user wait for 3000 seconds
      And User switch to Default from iframe
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "SAASClientOrders" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "SAASClientOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "ClientNote" Button on "SAASClientOrders" Page
      And User Click on "AddClientNote" Button on "SAASClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "SAASClientOrders" Page
      And User Enters "NoteText" on "TextField" Field on "SAASClientOrders" Page
      And User Click on "SaveClientNote" Button on "SAASClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "ClientAttachment" Button on "SAASClientOrders" Page
      And User Click on "AddClientAttachment" Button on "SAASClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "SAASClientOrders" Page
      And User Select "OrderStatusType" on "OrderStatusDrop" Field on "SAASClientOrders" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "SAASClientOrders" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "SAASClientOrders" Page
      And User switch to Default from iframe
      And user wait for 2000 seconds
      Then User Validates "AtCloseTitle" Title


















