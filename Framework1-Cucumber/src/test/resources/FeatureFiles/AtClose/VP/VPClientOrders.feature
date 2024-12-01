Feature: VPClientOrders Scenarios

  Background:
    Given User Setup Web Browser Session
      When User Navigates to "VPClient Application" URL
      And User Enters "UserName" on "UserNameTextbox" Field on "VPClientLogin" Page
      And User Enters "UserPassword" on "UserPasswordTextbox" Field on "VPClientLogin" Page
      And User Click on "Login" Button on "VPClientLogin" Page
      Then User Validates "AtCloseTitle" Title

@RealEO
  Scenario: User Place an Order
      And User Click on "Orders" Button on "VPClientOrders" Page
      And User Click on "AddOrderEntry" Button on "VPClientOrders" Page
      And user wait for 3000 seconds
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "StreetNo" Button on "VPClientOrders" Page
      And User Enters "StreetNo897" on "StreetNo" Field on "VPClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "StreetAddressNM" on "StreetAddress" Field on "VPClientOrders" Page
      And user wait for 2000 seconds
      And User Enters "TransactionNoVal" on "TransactionNo" Field on "VPClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "ZipCode" Button on "VPClientOrders" Page
      And User Enters "ZipCode08512" on "ZipCode" Field on "VPClientOrders" Page
      And User Click on "AutomationProduct" Button on "VPClientOrders" Page
      And user wait for 3000 seconds
      And User Enters "FirstNameAsmodias" on "FirstName" Field on "VPClientOrders" Page
      And User Enters "LastNameDavid" on "LastName" Field on "VPClientOrders" Page
      And User Click on "AutomationProduct" Button on "VPClientOrders" Page
      And user wait for 2000 seconds
      And User Click on "PlaceOrder" Button on "VPClientOrders" Page
      And User switch to Default from iframe
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User save "OrderNo" from "NewOrderNo" Field which is "clickable" on "VPClientOrders" Page
      And User switch to Default from iframe
      And User Enters "OrderNo" on "OrderNoSearch" Field on "VPClientOrders" Page
      And User switch to iframe "FrameQuickOrderEntry" on "Orders" Page
      And User Click on "ClientNote" Button on "VPClientOrders" Page
      And User Click on "AddClientNote" Button on "VPClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "VPClientOrders" Page
      And User Enters "NoteText" on "TextField" Field on "VPClientOrders" Page
      And User Click on "SaveClientNote" Button on "VPClientOrders" Page
      And user wait for 3000 seconds
      And User Click on "ClientAttachment" Button on "VPClientOrders" Page
      And User Click on "AddClientAttachment" Button on "VPClientOrders" Page
      And User Select "OrderProductType" on "OrderProductDrop" Field on "VPClientOrders" Page
      And User Select "OrderStatusType" on "OrderStatusDrop" Field on "VPClientOrders" Page
      And User Upload "Check.pdf" on "BrowseFile" Field on "VPClientOrders" Page
      And user wait for 2000 seconds
      And User Click on "AttachmentSave" Button on "VPClientOrders" Page
      And User switch to Default from iframe
      Then User Validates "AtCloseTitle" Title


















