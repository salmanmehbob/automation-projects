Feature: RealEOClientOrders Scenarios

  Background:
    Given User Setup Web Browser Session
      When User Navigates to "RealEOClient Application" URL
      And User Enters "UserName" on "UserNameTextbox" Field on "RealEOClientLogin" Page
      And User Enters "UserPassword" on "UserPasswordTextbox" Field on "RealEOClientLogin" Page
      And User Click on "Login" Button on "RealEOClientLogin" Page
      Then User Validates "AtCloseTitle" Title

@RealEO
  Scenario: User Place an Order
      And User Click on "Orders" Button on "RealEOClientOrders" Page
      And User Click on "AddOrderEntry" Button on "RealEOClientOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "StreetNo" Button on "RealEOClientOrders" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "RealEOClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "RealEOClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "RealEOClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "ZipCode" Button on "RealEOClientOrders" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "RealEOClientOrders" Page
      And User Click on "AutomationProduct" Button on "RealEOClientOrders" Page
      And user wait for 3000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "RealEOClientOrders" Page
      And User Enters "LastNameDavid" on "LastName" Field on "RealEOClientOrders" Page
      And User Click on "AutomationProduct" Button on "RealEOClientOrders" Page
      And user wait for 2000 seconds
      And User Click on "PlaceOrder" Button on "RealEOClientOrders" Page
      And User switch to Default from iframe
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "RealEOClientOrders" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "RealEOClientOrders" Page
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "ClientNote" Button on "RealEOClientOrders" Page
      And User Click on "AddClientNote" Button on "RealEOClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "RealEOClientOrders" Page
      And User Enters "NoteText" on "TextField" Field on "RealEOClientOrders" Page
      And User Click on "SaveClientNote" Button on "RealEOClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "ClientAttachment" Button on "RealEOClientOrders" Page
      And User Click on "AddClientAttachment" Button on "RealEOClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "RealEOClientOrders" Page
      And User Select "OrderStatusType" on "OrderStatusDrop" Field on "RealEOClientOrders" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "RealEOClientOrders" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "RealEOClientOrders" Page
      And User switch to Default from iframe
      Then User Validates "AtCloseTitle" Title


















