Feature: ClientOrders Scenarios

  Background:
    Given User Setup Web Browser Session
      When User Navigates to "AtCloseClient Application" URL
      And User Enters "UserName" on "UserNameTextbox" Field on "AtCloseClientLogin" Page
      And User Enters "UserPassword" on "UserPasswordTextbox" Field on "AtCloseClientLogin" Page
      And User Click on "Login" Button on "AtCloseClientLogin" Page
      Then User Validates "AtCloseTitle" Title


  Scenario: User Place an Order
 #   When user click on "Orders" on page "Orders"
      And User Click on "Orders" Button on "ClientOrders" Page
      And User Click on "AddOrderEntry" Button on "ClientOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "StreetNo" Button on "ClientOrders" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "ClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "ClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "ClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "ZipCode" Button on "ClientOrders" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "ClientOrders" Page
      And User Click on "AutomationProduct" Button on "ClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "AutomationProduct" Button on "ClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "ClientOrders" Page
      And User Enters "LastNameDavid" on "LastName" Field on "ClientOrders" Page
      And User Click on "PlaceOrder" Button on "ClientOrders" Page
      And User switch to Default from iframe
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "ClientOrders" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "ClientOrders" Page
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "ClientNote" Button on "ClientOrders" Page
      And User Click on "AddClientNote" Button on "ClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "ClientOrders" Page
      And User Enters "NoteText" on "TextField" Field on "ClientOrders" Page
      And User Click on "SaveClientNote" Button on "ClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "ClientAttachment" Button on "ClientOrders" Page
      And User Click on "AddClientAttachment" Button on "ClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "ClientOrders" Page
      And User Select "OrderStatusType" on "OrderStatusDrop" Field on "ClientOrders" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "ClientOrders" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "ClientOrders" Page
      And User switch to Default from iframe
      Then User Validates "AtCloseTitle" Title


















